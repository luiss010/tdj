<?php


include('outros/conexão.php');

if (isset($_POST['entrar'])) {
    if (isset($_POST['email']) && isset($_POST['password'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Conecta com o banco
        $mysqli = conectarBanco();

        // Verifica se é cliente
        $stmt = $mysqli->prepare("SELECT * FROM clientes WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($row = $result->fetch_assoc()) {
            if (password_verify($password, $row['senha'])) {
                $_SESSION['id_cliente'] = $row['id'];
                $_SESSION['nome'] = $row['nome'];
                $_SESSION['tipo'] = 'cliente'; // Marque como 'cliente'
                header("Location: Cliente/Pagina/principal.php"); // Redireciona para a página do cliente
                exit;
            }
        } else {
            // Verifica se é técnico
            $stmt = $mysqli->prepare("SELECT * FROM tecnicos WHERE email = ?");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($row = $result->fetch_assoc()) {
                if (password_verify($password, $row['senha'])) {
                    $_SESSION['id_tecnico'] = $row['id'];
                    $_SESSION['nome'] = $row['nome'];
                    $_SESSION['tipo'] = 'tecnico'; // Marque como 'tecnico'
                    header("Location: Tecnico/Pagina/principal.php"); // Redireciona para a página do técnico
                    exit;
                }
            }
        }

        // Se não encontrar o usuário ou senha errados
        $_SESSION['erro'] = "Usuário ou senha incorretos.";
        header("Location: painel.php"); // Redireciona para a página de login
        exit;
    } else {
        // Se campos não estiverem preenchidos
        $_SESSION['erro'] = "Preencha todos os campos.";
        header("Location: painel.php"); // Redireciona para a página de login
        exit;
    }
}


?>
