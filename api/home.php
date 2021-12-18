<?php
require_once 'database.php';
require_once 'response.php';

$data = [];
$data['status'] = 200;
$data['data'] = [];
try {
    $db = new Database();
    $query = $db -> connect() -> prepare("SELECT 
        r.id_share AS review_id, r.review AS review_name,
        r.views, r.shares, r.fech_pub AS review_date,
        co.id AS course_id, co.course AS course_name,
        s.id AS semester_id, s.semester AS semester_name,
        ca.id AS career_id, ca.career AS career_name
    FROM reviews r
    INNER JOIN courses co ON r.id_course = co.id
    JOIN semesters s ON co.id_semester = s.id
    JOIN careers ca ON co.id_career = ca.id
    WHERE r.outstanding = 1
    ORDER BY r.fech_pub DESC
    LIMIT 6; 
    ");
    $query -> execute([]);
    $rows = $query -> fetchAll(PDO::FETCH_ASSOC);
    if (!$rows) {
        throw new Exception('Lo sentimos, no hay evaluaciones para mostrar...');
    }
    $data['message'] = 'Operación correcta';
    $data['data'] = $rows;

    $stdQuery = $db -> connect() -> prepare('SELECT
        COUNT(*) AS quantity, SUM(views) AS views
    FROM reviews;
    ');
    
} catch (Exception $e) {
    $data['status'] = 400;
    $data['message'] = $e -> getMessage();
} finally {
    $response = new Response($data);
    $response -> json();
}
