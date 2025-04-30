<?php
include('../../outros/conexão.php');


if (!isset($_SESSION['id_tecnico'])) {
    echo "Acesso negado.";
    exit;
}

$id_tecnico = $_SESSION['id_tecnico'];
$id_servico = $_POST['id_servico'] ?? null;
$orcamento = $_POST['orcamento'] ?? null;

if ($id_servico && $orcamento !== null) {
    $mysqli = conectarBanco();
    $stmt = $mysqli->prepare("UPDATE serviços SET tecnico_id = ?, status = 'aceito', orcamento = ? WHERE id = ?");
    $stmt->bind_param("idi", $id_tecnico, $orcamento, $id_servico);

    if ($stmt->execute()) {
        header("Location: ../Pagina/Solicitaçao.php");
        exit;
    } else {
        echo "Erro ao aceitar o serviço.";
    }
} else {
    echo "Dados inválidos.";
}
?>
