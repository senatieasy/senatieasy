<?php

require_once 'database.php';
require_once 'response.php';
$db = new Database();
session_start();

$_POST = json_decode(file_get_contents('php://input'), true);
$data = [];
$data['status'] = 200;

function setPrettyReview($row){
    $data['career'] =$row['CAREER'];
}

try {
    $param = isset($_GET['param']) ? $_GET['param'] : '';
    switch ($param) {
        case 'add':
            $_POST['career']['name'] = 'Administracion de Pruebas2';
            /*
            if (!(isset($_SESSION['status']) && $_SESSION['status'])) {
                throw new Exception('Inicie sesión para continuar...');
            }
          */
            $query = $db->connect()->prepare("INSERT INTO careers (
                CAREER
            ) VALUES (
                :career); 
            ");
            $result = $query->execute([
                ':career' => $_POST['career']['name'],
            ]);
            if ($result) {
                $data['message'] = $_POST['career']['name'] . ' ha sido agregada correctamente';
            } else {
                throw new Exception('Ocurrió un error al agregar ' . $_POST['career']['name']);
            }
            break;
        case 'list':
            
             $_POST['career'] = [
                'search' => '%de%',
                'start' => 20,
                'quantity' => 10,
                'order' => 'ASC'
            ];
            $order = $_POST['career']['order'] == 'DESC'? 'DESC': 'ASC';
            $query = $db->connect()->prepare("
            SELECT * FROM careers    
            WHERE
                CAREER LIKE :search
            ORDER BY CAREER $order
            LIMIT :start, :quantity
            ");
            $query->execute([
                ':search' => $_POST['career']['search'],
                ':start' => $_POST['career']['start'],
                ':quantity' => $_POST['career']['quantity'],
            ]);
            $rows = $query->fetchAll(PDO::FETCH_ASSOC);
            if (!$rows) {
                throw new Exception('No hay resultados para esta busqueda');
            }
            $data['message'] = 'Registros listados correctamente';
            $data['data'] = $rows;
            break;
        case 'update':
            /*
            $_POST['review']['name'] = 'dato insertado correctamente';
            $_POST['review']['data'] = 'Eeste es un array de prueba';
            $_POST['review']['ID_COURCE'] = 40;
            $_POST['review']['id'] = 84;
            */
            if (!(isset($_SESSION['status']) && $_SESSION['status'])) {
                throw new Exception('Inicie sesión para continuar...');
            }
            $query = $db->connect()->prepare("UPDATE reviews 
            set 
                REVIEW = :review,
                CONTAIN = :contain,
                ID_COURSE = :cource
            WHERE
                ID = :id_review
            ");
            $result = $query->execute([
                ':review' => $_POST['review']['name'],
                ':contain' => json_encode($_POST['review']['data']),
                ':cource' => $_POST['review']['ID_COURCE'],
                ':id_review' => $_POST['review']['id']
            ]);
            if ($result) {
                $data['message'] = $_POST['review']['name'] . ' ha sido actualizada correctamente';
            } else {
                throw new Exception('Ocurrió un error al actualizar ' . $_POST['review']['name']);
            }
            break;

        case 'delete':
            
            $_POST['review']['id'] = '';
            $_POST['review']['id'] = '';

            if (!(isset($_SESSION['status']) && $_SESSION['status'])) {
                throw new Exception('Inicie sesión para continuar...');
            }
            $query = $db -> connect() -> prepare("DELETE 
                FROM careers r
                WHERE r.id = :id_career;
                UPDATE history h
                SET estado = 'Eliminado'
                WHERE h.id = :id_history;
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
