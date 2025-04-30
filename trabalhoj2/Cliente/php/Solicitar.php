<?php
include('../../outros/conexão.php'); // Arquivo com a função conectarBanco()
$status = 'pendente';

$mysqli = conectarBanco();

// Pega os dados do POST
$eletronico = $_POST['eletronico'] ?? '';
$endereco = $_POST['endereco'] ?? '';
$defeito = $_POST['defeito'] ?? '';

// Aqui você pode usar o ID do cliente da sessão, por exemplo:

$id_cliente = $_SESSION['id_cliente'] ?? null;

if (!$id_cliente) {
    echo "Usuário não autenticado.";
    exit;
}

// Insere no banco de dados
$stmt = $mysqli->prepare("INSERT INTO serviços (tipo, status, endereco, descricao, cliente_id) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("ssssi", $eletronico, $status, $endereco, $defeito, $id_cliente);

if ($stmt->execute()) {
    
    header("Location: ../Pagina/principal.php");
   
} else {
    echo "Erro ao registrar serviço.";
}
?>
