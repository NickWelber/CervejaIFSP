<?php

    include "classeLayout/classeLayout.php";
    include "classeLayout/classeCerveja.php";
    include "classeLayout/classeLinhaCerveja.php";

    include "configuracaoCabecalho.php";
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();
    $titulo = "Cerveja";

    include "menuTipoCerveja.php";

?>
<h3 class="main-title">Cervejas de Trigo</h3>
        <p>

<!--SELECT VIEW CERVEJA ""TRIGO"" -->
            <div id="team-area">
                <div class="container">
                    <?php 
                    
                    include "conexao.php";

                    $select = "SELECT * FROM view_cerveja  WHERE estilo LIKE '%Trigo%'";
                    $resultado = $conexao->query($select);
                    $l = new LinhaCerveja();
                    
                    foreach($resultado as $linha){
                        $p = new Cerveja($linha);
                        $l->add_cerveja($p);
                    }                    
                    $l->exibe();

                    ?>
                </div>
            </div>
        </p>

<?php        
    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();

    $rodape = new Rodape($p);
    $rodape->exibe();
?>    