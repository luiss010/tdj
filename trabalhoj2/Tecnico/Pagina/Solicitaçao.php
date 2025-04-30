<?php
include('../../outros/conexão.php'); // Conexão com o banco


if (!isset($_SESSION['id_tecnico'])) {
    echo "Acesso restrito. Faça login como técnico.";
    exit;
}

$nomeTecnico = $_SESSION['nome'] ?? 'Técnico';

$mysqli = conectarBanco();
$sql = "SELECT * FROM serviços WHERE tecnico_id IS NULL LIMIT 3";
$result = $mysqli->query($sql);
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Serviços disponíveis</title>
    <link rel="stylesheet" href="../css/Solicitaçao.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">

    <script>
        function voltarPagina() {
            window.history.back();
        }
    </script>

</head>

<body>
    <div class="td">
        <h4 class="name">Olá, <?= htmlspecialchars($nomeTecnico) ?>!</h4>
        <button onclick="voltarPagina()" class="bot">
            <div class="bot">
                Clique aqui para voltar!
            </div>
        </button>
        <div class="container">
            <h2 class="mb">Serviços Disponíveis para Atendimento!</h2>

            <?php if ($result->num_rows > 0): ?>
                <div class="list-group">
                    <?php while ($row = $result->fetch_assoc()): ?>
                        <div class="list-group-item mb-3">
                            <h5><strong>Tipo:</strong> <?= htmlspecialchars($row['tipo']) ?></h5>
                            <p><strong>Endereço:</strong> <?= htmlspecialchars($row['endereco']) ?></p>
                            <p><strong>Descrição:</strong> <?= htmlspecialchars($row['descricao']) ?></p>
                            <p><strong>Status:</strong> <?= htmlspecialchars($row['status']) ?></p>

                            <form method="post" action="../php/aceitar_serviço.php" class="mt-3">
                                <input type="hidden" name="id_servico" value="<?= $row['id'] ?>">
                                <div class="mb-2">
                                    <label for="orcamento_<?= $row['id'] ?>">Orçamento (R$):</label>
                                    <input type="number" step="0.01" name="orcamento" id="orcamento_<?= $row['id'] ?>" class="form-control" required>
                                </div>
                                <button type="submit" class="btn btn-success">Aceitar serviço</button>
                            </form>


                        </div>
                    <?php endwhile; ?>
                </div>
            <?php else: ?>
                <div class="alert alert-info">Nenhum serviço disponível no momento.</div>
            <?php endif; ?>

        </div>
    </div>
</body>

</html>