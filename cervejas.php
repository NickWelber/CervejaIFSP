<?php

    include "classeLayout/classeLayout.php";
    include "classeLayout/classeCerveja.php";
    include "classeLayout/classeLinhaCerveja.php";

    include "configuracaoCabecalho.php";
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();
    $titulo = "Cervejas";

    include "menuTipoCerveja.php";

?>
<h3 class="main-title">Todas Cervejas</h3>
        <p>
<!-- CERVEJAS -->
		<div id="team-area">
			<div class="container">
				<?php				
					include "conexao.php";

					$select = "SELECT * FROM view_cerveja";
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