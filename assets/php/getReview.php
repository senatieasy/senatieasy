<?php

include_once 'database.php';
include_once 'res.php';

$codes = [
    '&lt;code&gt;', '&lt;/code&gt;',
    '&lt;precode&gt;', '&lt;/precode&gt;',
    '&lt;pre&gt;', '&lt;/pre&gt;',
    '&lt;blockquote&gt;', '&lt;/blockquote&gt;',
    '&lt;sup&gt;', '&lt;/sup&gt;',
    '&lt;sub&gt;', '&lt;/sub&gt;',
    '&lt;br&gt;'
];

$html = [
    '<code>', '</code>',
    '<precode>', '</precode>',
    '<pre>', '</pre>',
    '<blockquote>', '</blockquote>',
    '<sup>', '</sup>',
    '<sub>', '</sub>',
    '<br>'
];
 
class clas {
    public $data = [];
};

$array = [];

$data -> var1;

$_POST['review'] = 99;
//$_POST = json_decode(file_get_contents('php://input'), true);

// Esqueleto response
$data = [];
$data['career'] = [];
$data['semester'] = [];
$data['course'] = [];
$data['review'] = [];
$data['review']['punctuation'] = [];
$data['review']['data'] = [];

if (isset($_POST['review'])) {
    $review = $_POST['review'];
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
                id_review = :review1
        ) AS interaction_likes,
        (
            SELECT COUNT(interaction) FROM interactions
            WHERE 
                interaction = 'dislike' &&
                id_review = :review2
        ) AS interaction_dislikes
    FROM reviews r
    INNER JOIN courses co ON r.id_course = co.id
    INNER JOIN semesters s ON co.id_semester = s.id
    INNER JOIN careers ca ON co.id_career = ca.id
    WHERE r.id = :review3
    ");
    $query -> execute([
        ':review1' => $review,
        ':review2' => $review,
        ':review3' => $review
    ]);
    $row = $query -> fetch(PDO::FETCH_ASSOC);
    // echo json_encode($row);
    if ($row) {
        $data['status'] = 200;
        $data['message'] = 'La evaluación ha sido obtenida correctamente';

        // Seteando la carrera
        $data['career']['id'] = $row['career_id'];
        $data['career']['name'] = $row['career_name'];

        // Seteando el semestre
        $data['semester']['id'] = $row['semester_id'];
        $data['semester']['name'] = $row['semester_id'];
        $data['semester']['description'] = $row['semester_name'];

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
            $question['question'] = str_replace($codes, $html, htmlentities($contain['question']));
            $question['answer'] = str_replace($codes, $html, htmlentities($contain['answer']));
            array_push($data['review']['data'], $question);
            $i++;
        }
    } else {
        $data['status'] = 400;
        $data['message'] = 'La evaluación no existe';
    }
} else {
    $data['status'] = 400;
    $data['message'] = 'Faltan parámetros';
}

$res = new Res($data);

$res -> json();

/*

header('Content-Type: json');
echo json_encode($data, JSON_PRETTY_PRINT);
http_response_code($data['status']);

*/