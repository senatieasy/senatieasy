<?php

class Database{
    private $host;
    private $db;
    private $user;
    private $password;
    private $charset;
    public function __construct(){
        $data = json_decode(file_get_contents('dbconfig.json'), true);
        $this->host = $data['host'];
        $this->db = $data['db'];
        $this->user = $data['user'];
        $this->password = $data['password'];
        $this->charset = $data['charset'];   
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

class DatabaseOld{
    private $host;
    private $db;
    private $user;
    private $password;
    private $charset;
    public function __construct(){
        /*
        $local_url = [
            'localhost',
            '127.0.0.1'
        ];
        if (
            in_array($_SERVER['HTTP_HOST'], $local_url, true)
        ) {*/
            $this->host = '127.0.0.1';
            $this->db = 'epiz_26465018_senatieasy';
            $this->user = 'root';
            $this->password = '';
            $this->charset = 'utf8mb4';
            /*
        } else {
            $this->host = 'sql109.epizy.com';
            $this->db = 'epiz_26465018_senatieasy';
            $this->user = 'epiz_26465018';
            $this->password = 'csxxQsFeuwHW';
            $this->charset = 'utf8mb4';
        }*/
        
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
};

?>
