<?php

class Res{
    private $data;
    public function __construct($data){
        $this -> data = $data;
    }
    function json(){
        header('Content-Type: json');
        echo json_encode($this -> data, JSON_PRETTY_PRINT);
        http_response_code($this -> data['status']);
    }
    function text($status = 200){
        header('Content-Type: text/plain');
        echo $this->data;
        http_response_code($status);
    }
}

?>