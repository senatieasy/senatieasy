<?php

require_once 'database.php';
require_once 'response.php';
session_start();

function setPrettyReview($row)
{
    // Seteando estructura de review
    $data = [];
    $data['career'] = [];
    $data['semester'] = [];
    $data['course'] = [];
    $data['review'] = [];
    $data['review']['punctuation'] = [];
    $data['review']['data'] = [];

    // Seteando la carrera
    $data['career']['id'] = $row['career_id'];
    $data['career']['name'] = $row['career_name'];

    // Seteando el semestre
    $data['semester']['id'] = $row['semester_id'];
    $data['semester']['name'] = $row['semester_name'];

    // Seteando el curso
    $data['course']['id'] = $row['course_id'];
    $data['course']['name'] = $row['course_name'];

    // Seteando el review
    $data['review']['id'] = $row['review_id'];
    $data['review']['name'] = $row['review_name'];
    $data['review']['date'] = $row['review_date'];
    $data['review']['punctuation']['likes'] = $row['interaction_likes'];
    $data['review']['punctuation']['dislikes'] = $row['interaction_dislikes'];
    $data['review']['punctuation']['shares'] = $row['interaction_shares'];
    $data['review']['punctuation']['views'] = $row['interaction_views'];

    // Seteando el contenido
    $i = 1;
    foreach (json_decode($row['review_contain'], true) as $contain) {
        $question = [];
        $question['id'] = str_pad($i, 2, '0', STR_PAD_LEFT);
        $question['question'] = $contain['question'];
        $question['answer'] = $contain['answer'];
        array_push($data['review']['data'], $question);
        $i++;
    }
    return $data;
}

$_POST = json_decode(file_get_contents('php://input'), true);

$data = [];
$data['status'] = 200;

try {
    $param = isset($_GET['param']) ? $_GET['param'] : '';
    switch ($param) {
        case 'add':
            if (!(isset($_SESSION['status']) && $_SESSION['status'])) {
                throw new Exception('Inicie sesión para continuar...');
            }
            $db = new Database();
            $query = $db->connect()->prepare("INSERT INTO reviews (
                review, contain, id_course, id_user
            ) VALUES (
                :review1, :contain1, :id_course1, :id_user1
            );
            INSERT INTO history (
                review, contain, id_course, id_user
            ) VALUES (
                :review2, :contain2, :id_course2, :id_user2
            );
            ");
            $result = $query->execute([
                ':review1' => $_POST['review']['name'],
                ':contain1' => json_encode($_POST['review']['data']),
                ':id_course1' => $_POST['course']['id'],
                ':id_user1' => $_SESSION['user']['id'],
                ':review2' => $_POST['review']['name'],
                ':contain2' => json_encode($_POST['review']['data']),
                ':id_course2' => $_POST['course']['id'],
                ':id_user2' => $_SESSION['user']['id']
            ]);
            if ($result) {
                $data['message'] = $_POST['review']['name'] . ' ha sido agregada correctamente';
            } else {
                throw new Exception('Ocurrió un error al agregar ' . $_POST['review']['name']);
            }
            break;
        case 'list':
            $db = new Database();
            $order = $_POST['filter']['order'] == 'DESC'? 'DESC': 'ASC';
            $query = $db->connect()->prepare("SELECT
                r.id AS review_id, r.review AS review_name,
                r.contain AS review_contain, r.fech_pub AS review_date,
                co.id AS course_id, co.course AS course_name,
                s.id AS semester_id, s.semester AS semester_name,
                ca.id AS career_id, ca.career AS career_name,
                r.views AS interaction_views, r.shares AS interaction_shares,
                (
                    SELECT COUNT(interaction) FROM interactions
                    WHERE 
                        interaction = 'like' &&
                        id_review = r.id
                ) AS interaction_likes,
                (
                    SELECT COUNT(interaction) FROM interactions
                    WHERE 
                        interaction = 'dislike' &&
                        id_review = r.id
                ) AS interaction_dislikes
            FROM reviews r
            INNER JOIN courses co ON r.id_course = co.id
            INNER JOIN semesters s ON co.id_semester = s.id
            INNER JOIN careers ca ON co.id_career = ca.id
            WHERE
                r.review LIKE :search AND
                s.id = :semester AND
                co.id = :course AND
                ca.id = :career
            ORDER BY review_id $order
            LIMIT :start, :quantity
            ");
            $query->execute([
                ':search' => $_POST['filter']['search'],
                ':start' => $_POST['filter']['start'],
                ':quantity' => $_POST['filter']['quantity'],
                ':career' => $_POST['career']['id'],
                ':semester' => $_POST['semester']['id'],
                ':course' => $_POST['course']['id']
            ]);
            $rows = $query->fetchAll(PDO::FETCH_ASSOC);
            if (!$rows) {
                throw new Exception('No hay resultados para esta busqueda');
            }
            $data['message'] = 'Registros listados correctamente';
            $data['data'] = [];
            foreach ($rows as $row) {
                $row = setPrettyReview($row);
                array_push($data['data'], $row);
            }
            break;
        case 'update':
            $data['message'] = 'Peticion de update';
            break;
        case 'delete':
            if (!(isset($_SESSION['status']) && $_SESSION['status'])) {
                throw new Exception('Inicie sesión para continuar...');
            }
            $db = new Database();
            $query = $db -> connect() -> prepare("DELETE
            FROM reviews r
            WHERE r.id = :review1;
            UPDATE history h
            SET estado = 'Eliminado'
            WHERE h.id = :review2;
            ");
            $result = $query -> execute([
                ':review1' => $_POST['review']['id'],
                ':review2' => $_POST['review']['id']
            ]);
            if ($result) {
                $data['message'] = $_POST['review']['name'] . ' ha sido eliminada correctamente';
            } else {
                throw new Exception('Ocurrió un error al aliminar ' . $_POST['review']['name']);
            }
            break;
        case 'listOne':
            if (!isset($_POST['review'])) {
                throw new Exception('Faltan parámetros en la petición');
            }

            // Obteniendo evaluación de la BD
            $db = new Database();
            $query = $db->connect()->prepare("SELECT
                    r.id AS review_id, r.review AS review_name,
                    r.contain AS review_contain, r.fech_pub AS review_date,
                    co.id AS course_id, co.course AS course_name,
                    s.id AS semester_id, s.semester AS semester_name,
                    ca.id AS career_id, ca.career AS career_name,
                    r.views AS interaction_views, r.shares AS interaction_shares,
                    (
                        SELECT COUNT(interaction) FROM interactions
                        WHERE 
                            interaction = 'like' &&
                            id_review = r.id
                    ) AS interaction_likes,
                    (
                        SELECT COUNT(interaction) FROM interactions
                        WHERE 
                            interaction = 'dislike' &&
                            id_review = r.id
                    ) AS interaction_dislikes
                FROM reviews r
                INNER JOIN courses co ON r.id_course = co.id
                INNER JOIN semesters s ON co.id_semester = s.id
                INNER JOIN careers ca ON co.id_career = ca.id
                WHERE r.id = :review
            ");
            $query->execute([
                ':review' => $_POST['review']
            ]);
            $row = $query->fetch(PDO::FETCH_ASSOC);

            // Validando que evaluación exista
            if (!$row) {
                throw new Exception('No existe la evaluación ' . $_POST['review']);
            }

            $data['message'] = 'Operación correcta';
            $data['data'] = setPrettyReview($row);
            break;
        default:
            throw new Exception('No se puede ejecutar el parámetro ' . $param);
            break;
    }
} catch (Exception $e) {
    $data['status'] = 400;
    $data['message'] = $e->getMessage();
} finally {
    $response = new Response($data);
    $response -> json();
}
