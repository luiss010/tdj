<?php session_start(); ?>
<?php if ($_SESSION['tipo'] !== 'tecnico') {
    echo "Acesso negado.";
    exit;
} ?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConsetoL - Técnico</title>
    <link rel="stylesheet" href="../css/principal.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

    <script>
        function toggleMenu() {
            const menu = document.getElementById('menuLogout');
            menu.classList.toggle('d-none');
        }
    </script>

</head>

<body>
    <div class="back">
        <div class="header">
            <ul>
                <li><button class="bu" onclick="window.location.href='Solicitaçao.php'">Serviços recebidos</button></li>
                <li><button class="bu" onclick="window.location.href='disponiveis.php'">Atualizar status de serviço</button></li>
                <li><button class="bu">Relatórios de atendimento</></button></li>
                <li class="dropdown">
                    <strong onclick="toggleMenu()" style="cursor: pointer;">

                        Olá!, <?= htmlspecialchars($_SESSION['nome']) ?>
                    </strong>
                    <div id="menuLogout" class="logout-menu d-none">
                        <form action="../../outros/logout.php" method="post">
                            <button type="submit" class="btn btn-danger btn-sm">Logout</button>
                        </form>
                    </div>
                </li>
            </ul>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="texts">
                <h1>Bem vindo Técnico!</h1>
                <h5 class="h5">Você pode consultar os serviços que foram solicitados á você nessa parte.</h5>
            </div>
        </div>
    </div>

    <br>
    </div>
</body>

</html>