<?php

class Database{
    private $host;
    private $db;
    private $user;
    private $password;
    private $charset;
    public function __construct(){
        require_once 'dbconfig.php';
        $this->host = $dbconfig['server'];
        $this->db = $dbconfig['database'];
        $this->user = $dbconfig['username'];
        $this->password = $dbconfig['password'];
        $this->charset = $dbconfig['charset'];   
    }
    function connect(){
        try{
            $connection = "mysql:host=" . $this->host . ";dbname=" . $this->db . ";charset=" . $this->charset;
            $options = [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES   => false,
            ];
            $pdo = new PDO($connection, $this->user, $this->password, $options);
            return $pdo;
        }catch(PDOException $e){
            print_r('Error de  conexión: ' . $e->getMessage());
        }
    }
}

?>