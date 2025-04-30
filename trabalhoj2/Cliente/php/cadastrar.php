<?php

include('../../outros/conexão.php');

if (isset($_POST['cadastrar'])) {
    if (isset($_POST['email']) && isset($_POST['password']) && isset($_POST['name']) && isset($_POST['cpf'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];
        $name = $_POST['name'];
        $cpf = $_POST['cpf'];

        $mysqli = conectarBanco();

        $stmt = $mysqli->prepare("SELECT * FROM clientes WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();
    
        if ($result->num_rows > 0) {
            
            $_SESSION['erro'] = "Email já cadastrado";
                header("Location: cadastro.php");
                exit;
    
        } else {
        
        $hashword = hash('sha256', $password);
    
        $stmt = $mysqli->prepare("INSERT INTO clientes (nome, email, senha, cpf) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $name, $email, $hashword, $cpf);
        
        header("Location: ../../painel.php");
        if ($stmt->execute()) {
            return true;
        } else {
            return false;
        }
    }

    }}
?>
