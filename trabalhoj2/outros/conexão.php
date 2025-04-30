<?php
session_start();
#cria uma função para entrar no banco de dados
function conectarBanco() {


    $mysqli = new mysqli('localhost','root','','tecnico');
    
    if ($mysqli->connect_error) {
        die("Erro de conexão: " . $mysqli->connect_error);
    }

    return $mysqli;
}



