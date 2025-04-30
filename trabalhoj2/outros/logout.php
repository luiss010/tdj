<?php
session_start();
session_destroy();
header("Location: ../painel.php"); // redirecione para a página inicial
exit;
?>