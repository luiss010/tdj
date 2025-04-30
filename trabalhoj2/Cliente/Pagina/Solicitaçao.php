<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConsetoL</title>
    <link rel="stylesheet" href="../css/Solicitaçao.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">


    <script>
        function voltarPagina() {
            window.history.back();
        }
    </script>

</head>
<body>
<button onclick="voltarPagina()" class="btn btn-secondary">
  ⬅️ Voltar
</button>
<div class="back">
<div class="header">
<div class="container d-flex justify-content-center align-items-center vh-">
<div class="card shadow p-4" style="width: 100%; max-width: 400px;">
<form action="../php/Solicitar.php" method="POST">
<h1>Descreve o serviço desejado!</h1>
    <label for="sle" class="lab">Insira o eletrônico</label><br>
    <select name="eletronico" id="sle" required>
        <option value="TV">TV</option>
        <option value="Geladeira">Geladeira</option>
        <option value="Notebook">Notebook</option>
        <option value="Maquina">Máquina de Lavar</option>
        <option value="Celular">Celular</option>
        <option value="Radio">Rádio</option>
        <option value="Camera">Câmera Fotográfica</option>
    </select><br>

    <label for="ede" class="lab">Insira o seu endereço</label><br>
    <input type="text" name="endereco" id="ede" required><br>

    <label for="defeito" class="lab">Descreva o defeito</label><br>
    <textarea name="defeito" id="defeito" required></textarea><br>

    <input type="submit" name="cadastrar" value="Cadastrar Serviço">
</form>

</div>
</div>
</div>
</div>

</body>