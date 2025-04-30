<?php session_start(); ?>
<?php if ($_SESSION['tipo'] !== 'cliente') {
    echo "Acesso negado.";
    exit;
} ?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConsetoL - Cliente</title>
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
                <li></li>
                <li><button class="bu" onclick="window.location.href='Solicitaçao.php'">Solicitar serviço</button></li>
                <li><button class="bu" onclick="window.location.href='disponiveis.php'">Acompanhar serviço</button></li>
                <li class="dropdown">
                    <strong onclick="toggleMenu()" style="cursor: pointer;">
                        Olá, <?= htmlspecialchars($_SESSION['nome']) ?>
                    </strong>
                    <div id="menuLogout" class="logout-menu d-none">
                        <form action="../../outros/logout.php" method="post">
                            <button type="submit" class="btn btn-danger btn-sm">Logout</button>
                        </form>
                    </div>
                </li>

            </ul>

            <div class="papa">
                <p class="h1">Serviços de conserto em geral!</p>
                <p class="p">Aqui você encontra serviços de conserto de todo tipo de eletrodoméstico.</p>
                <button class="bu" onclick="window.location.href='Solicitaçao.php'" class="bot1">Aperte aqui para agendar nossos serviços!</button>
            </div>
        </div>
    </div>
    <div class="cp">
        <h1 class="pipi">Sistema para agendamentos de conserto de eletrodomésticos.</h1>
    </div>


    <div class="info">
        <div class="item">
            <h2>Limpeza interna</h2>
            <p>Remoção de sujeira acumulada nos componentes internos para melhorar o desempenho e evitar falhas.</p>
        </div>

        <div class="item">
            <h2>Peças desgastadas</h2>
            <p>Verificação de partes que estão com desgaste e substituição das que comprometerem o funcionamento.</p>
        </div>

        <div class="item">
            <h2>Troca de filtros</h2>
            <p>Substituição de filtros antigos para manter a eficiência, higiene e prolongar a vida útil do aparelho.</p>
        </div>

    </div>
    <div class="info">
        <div class="item">
            <h2>Reparo de fiação e conexões</h2>
            <p>Correção de fios soltos, desgastados ou rompidos que podem causar mau funcionamento ou curtos-circuitos.</p>
        </div>

        <div class="item">
            <h2>Desentupimento de dutos e filtros</h2>
            <p>Limpeza de dutos obstruídos e substituição de filtros saturados que prejudicam a eficiência do aparelho.</p>
        </div>

        <div class="item">
            <h2>Verificação de vazamentos</h2>
            <p>Inspeção de mangueiras, conexões e vedação para detectar e corrigir vazamentos de água ou gás.</p>
        </div>
    </div>

    <div class="baixo">
    <img src="imgparaspdf.png">
    <br>
    <br>
    <br>

        <h1>Serbivp</h1>
        
    </div>
</body>

</html>