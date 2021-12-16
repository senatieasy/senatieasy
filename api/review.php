<?php

require_once 'database.php';
session_start();
//error_reporting(0);

//$_POST = json_decode(file_get_contents('php://input'), true);
$_POST['review'] = 83;
$data = [];
try {
    $param = isset($_GET['param']) ? $_GET['param']: '';
    switch ($param) {
        case 'add':
            if (!(isset($_SESSION['status']) && $_SESSION['status'])) {
                throw new Exception('Inicie sesión para continuar...');
            }
            
            break;
        case 'list':
            $data['status'] = 200;
            $data['message'] = 'Peticion de list';
            break;
        case 'update':
            $data['status'] = 200;
            $data['message'] = 'Peticion de update';
            break;
        case 'delete':
            break;
        default:
            // Esqueleto de Response
            if (!isset($_POST['review'])) {
                throw new Exception('Faltan parámetros en la petición');
            }

            // Obteniendo evaluación de la BD
            $db = new Database();
            $query = $db -> connect() -> prepare("SELECT
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
            $query -> execute([
                ':review' => $_POST['review']
            ]);
            $row = $query -> fetch(PDO::FETCH_ASSOC);
            
            // Validando que evaluación exista
            if (!$row) {
                throw new Exception('No existe la evaluación ' . $_POST['review']);
            }

            $data['career'] = [];
            $data['semester'] = [];
            $data['course'] = [];
            $data['review'] = [];
            $data['review']['punctuation'] = [];
            $data['review']['data'] = [];

            $data['status'] = 200;
            $data['message'] = 'Operación correcta';

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
            break;
    }
} catch (Exception $e) {
    $data['status'] = 400;
    $data['message'] = $e -> getMessage();
} finally {
    echo json_encode($data, JSON_PRETTY_PRINT);
}
?>