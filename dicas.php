<?php

    include "classeLayout/classeLayout.php";

    include "configuracaoCabecalho.php";
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();

    $titulo = "Dicas";

    include "configuracaoDicas.php";
    $dicas = new Dicas($p);
    $dicas->exibe();

    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();
            
    $rodape = new Rodape($p);
    $rodape->exibe();
?>      