<?php
    include "classeLayout/classeLayout.php";

    include "configuracaoCabecalho.php";                                       
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();

    $titulo = "Estilo";
    $id = "Estilo";

    include "configuracaoTabela$id.php";
    $tabela = new Tabela($p);
    $tabela->exibe();

    include "configuracaoModal$id.php";
    $modal = new Modal($p);
    $modal->exibe();

    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();

    $rodape = new Rodape();
    $rodape->exibe();

?>