<?php 
include "database.php";
//$db = new Database();

$dbOld = new DatabaseOld();

$query = $dbOld -> connect() -> prepare("SELECT * FROM reviews ORDER BY id");

$query -> execute([]);

$rows = $query -> fetchAll(PDO::FETCH_ASSOC);
$ok = 0;
$total = 0;

foreach($rows as $row ){
    $var1 = $row['name'];
    $var2 = $row['contain'];
    $var3 = $row['views'];
    $var4 = $row['course']+20;
    $var5 = $row['from_date'];


    $db = new Database();

    $query2 = $db -> connect() -> prepare("INSERT INTO reviews(REVIEW, CONTAIN, VIEWS, ID_COURSE, FECH_PUB) VALUES(:REVIEW, :CONTAIN, :VIEWS, :ID_COURSE, :FECH_PUB)");
    $result = $query2 -> execute([
         ':REVIEW'=> $var1, 
         ':CONTAIN'=> $var2, 
         ':VIEWS' => $var3,
         ':ID_COURSE' => $var4,
         ':FECH_PUB' => $var5

    ]);
    if ($result){
        $ok++;

    }
    $total++;
}

echo $ok.' registros insertados de '.$total;
//echo json_encode($rows);






?>