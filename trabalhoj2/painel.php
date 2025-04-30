<?php
session_start();
$erro = $_SESSION['erro'] ?? '';
unset($_SESSION['erro']);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel de Login</title>

    <link rel="stylesheet" href="painel.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>
    <div class="corpo2">
        <div class="corpo">
        <div class="card shadow p-4" style="width: 100%; max-width: 400px;">
            <h1 class="mb-3 text-center">Bem-vindo!</h1>
            <h5 class="mb-4 text-center">Acesse sua conta ou cadastre-se</h5>

            <?php if ($erro): ?>
                <div class="alert alert-danger text-center">
                    <?= htmlspecialchars($erro) ?>
                </div>
            <?php endif; ?>

            <form action="entrar.php" method="POST">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Insira seu email" required>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Senha</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Insira sua senha" required>
                </div>

                <div class="d-grid gap-2">
                    <button type="submit" name="entrar" class="btn btn-primary">Entrar</button>
                    <a href="Cliente/Pagina/cadastro.php" class="btn btn-link">Cadastrar-se</a>
                </div>
            </form>
        </div>
    </div>
            </div>
    </div>
    <div class="corpof">
    
    </div>
</body>
</html>
