reutize esse bloco para ações diferentes aparecerem de acordo com o tipo de usuário cliente/técnico

<?php
 	    if (isset($_SESSION['tipo'])) {
                if ($_SESSION['tipo'] === 'cliente') {
                    #Insira aqui tudo que for disponivel apenas para o cliente
                } elseif ($_SESSION['tipo'] === 'tecnico') {
                    #Insira aqui tudo que for disponivel apenas para o tecnico
                } else {
                    // Caso raro: tipo desconhecido
                    echo "Tipo de usuário não reconhecido.";
                }
            } else {
                // Usuário não está logado
                echo "Você precisa estar logado para ver esta página.";
            }
?>

Botão reutilizável de voltar
<button onclick="voltarPagina()" class="btn btn-secondary">
  ⬅️ Voltar
</button>

<script>
  function voltarPagina() {
    window.history.back();
  }
</script>
