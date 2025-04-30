<?php
include('conexão.php');

function atualizarSenhas($tabela) {
    global $mysqli;

    $sql = "SELECT id, senha FROM $tabela";
    $res = $mysqli->query($sql);

    while ($row = $res->fetch_assoc()) {
        $id = $row['id'];
        $senha = $row['senha'];

        // Se já estiver com hash (starts with $2y$), pula
        if (strpos($senha, '$2y$') === 0) {
            continue;
        }

        $senhaHash = password_hash($senha, PASSWORD_DEFAULT);

        $update = $mysqli->prepare("UPDATE $tabela SET senha = ? WHERE id = ?");
        $update->bind_param("si", $senhaHash, $id);
        $update->execute();
    }

    echo "Senhas da tabela '$tabela' atualizadas com sucesso!<br>";
}

atualizarSenhas("clientes");
atualizarSenhas("tecnicos");

$mysqli->close();
?>
