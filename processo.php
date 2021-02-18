<?php

    include "classeLayout/classeLayout.php";

    include "configuracaoCabecalho.php";
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();

    $titulo = "Processo";

    include "configuracaoProcesso.php";
    $processo = new Processo($p);
    $processo->exibe();

    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();
            
    $rodape = new Rodape($p);
    $rodape->exibe();
?>      