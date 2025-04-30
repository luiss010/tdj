<?php
session_start();
$erro = $_SESSION['erro'] ?? '';
unset($_SESSION['erro']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel</title>

    <link rel="stylesheet" href="../css/cadastro.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

</head>
    
<body class="body">
    <div class="corpo">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow p-4" style="width: 100%; max-width: 400px;">
            <h1 class="mb-3 text-center">Bem-vindo!</h1>
            <h5 class="mb-4 text-center"> cadastre-se aqui</h5>

            <?php if ($erro): ?>
                <div class="alert alert-danger text-center">
                    <?= htmlspecialchars($erro) ?>
                </div>
            <?php endif; ?>

            <form action="../php/cadastrar.php" method="POST">

            <div class="mb-3">
              
              <label for="name" class="form-label"> Nome </label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Insira seu nome" required>
              </div>
  
              <div class="mb-3">
                
                <label for="cpf" class="form-label"> CPF </label>
                  <input type="text" class="form-control" id="cpf" name="cpf"  placeholder="Insira seu CPF" required>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Insira seu email" required>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Senha</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Insira sua senha" required>
                </div>

                <div class="d-grid gap-2">
                    <button type="submit" name="cadastrar" class="btn btn-primary">Cadastrar-se</button>
                    
                </div>
            </form>
        </div>
    </div></div>
</body>
</html>