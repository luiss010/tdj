<?php
include('../../outros/conexão.php');


if (!isset($_SESSION['tipo']) || $_SESSION['tipo'] !== 'tecnico') {
    echo "Você precisa estar logado como técnico para ver esta página.";
    exit;
}

$nomeTecnico = $_SESSION['nome'] ?? 'Técnico';
$id_tecnico = $_SESSION['id_tecnico'] ?? null;

if (!$id_tecnico) {
    echo "ID do técnico não encontrado.";
    exit;
}

$mysqli = conectarBanco();
$stmt = $mysqli->prepare("SELECT * FROM serviços WHERE tecnico_id = ?");
$stmt->bind_param("i", $id_tecnico);
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Serviços Aceitos</title>
    <link rel="stylesheet" href="../css/disponiveis.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">

    <script>
        function voltarPagina() {
            window.history.back();
        }
    </script>


</head>

<body>
    <button onclick="voltarPagina()" class="bot">
        Aperte aqui para voltar!
    </button>
    <h4 class="name">Olá, <?= htmlspecialchars($nomeTecnico) ?>!</h4>

    <div class="container mt-5">
        <h2 class="mb-4">Serviços Aceitos</h2>

        <?php if ($result->num_rows > 0): ?>
            <div class="list-group">
                <?php while ($row = $result->fetch_assoc()): ?>
                    <div class="list-group-item mb-3">
                        <h5 class="hhhh"><strong>Tipo:</strong> <?= htmlspecialchars($row["tipo"]) ?></h5>
                        <p><strong>Endereço:</strong> <?= htmlspecialchars($row["endereco"]) ?></p>
                        <p><strong>Descrição:</strong> <?= htmlspecialchars($row["descricao"]) ?></p>
                        <p><strong>Status:</strong> <?= htmlspecialchars($row["status"]) ?></p>
                        <p><strong>Orçamento:</strong> R$ <?= number_format($row["orcamento"], 2, ",", ".") ?></p>
                    </div>
                <?php endwhile; ?>
            </div>
        <?php else: ?>
            <div class="alert alert-info">Nenhum serviço aceito por você até o momento.</div>
        <?php endif; ?>
    </div>
</body>

</html>