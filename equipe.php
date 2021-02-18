<?php
    include "classeLayout/classeLayout.php";

    include "configuracaoCabecalho.php";                                       
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();

    $titulo = "Equipe";

    include "configuracaoEquipe.php";
    $equipe = new Equipe($p);
    $equipe->exibe();

    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();

    $rodape = new Rodape($p);
    $rodape->exibe();
?>

    