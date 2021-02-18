<?php

	include "classeLayout/classeLayout.php";
	include "classeLayout/classeComentario.php";
	include "classeLayout/classeLinhaComentario.php";
	
    include "configuracaoCabecalho.php";                                       
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();

    $titulo = "Comentario";
	$id = "Comentario";
	
/*
    echo '
        <p>
            <div id="contact-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="main-title">Insira seu Comentario</h3>
						</div>
						<form action="" method="POST">
						<div class="row">
							<div class="form-group col-sm-6 col-xs-6">	
								<select name="cod_usuario" class="form-control">
									<option>::Selecione Nome::</option>'
							
										require_once "conexao.php";
						
										$select = "SELECT id_usuario, nome_completo FROM usuario ORDER BY nome_completo";
										$resultado = $conexao->query($select);

										foreach($resultado as $linha){
											$p["divRow"][0] .= '<option value="'.$linha["id_usuario"].'">'.$linha["nome_completo"].'</option>'; 
										}
									
								$p["divRow"][0] .= '
								</select>';
								echo'
							</div>
						</div>

						<div class="row">
							<div class="form-group col-sm-6 col-xs-6">	
								<label for="descricao">Comentario</label>
								<textarea name="descricao" for="descricao" 
								id="descricao" class="form-control" ></textarea><br />
							</div>
						</div>
						<div class="row">
							<div class="form-group col-sm-6 col-xs-6">	
								<input type="time" name="horario" 
								id="horario" class="form-control" placeholder= "Horario..."/>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-sm-6 col-xs-6">	
								<input type="date" name="data" 
								id="data" class="form-control" placeholder= "Data..."/>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-sm-6 col-xs-6">
								<select name="cod_cerveja" class="form-control">
									<option>::Selecione Cerveja::</option>';

										require_once "conexao.php";
								
										$select = "SELECT id_cerveja, nome_cerveja FROM cerveja ORDER BY nome_cerveja";
										$resultado = $conexao->query($select);
										foreach($resultado as $linha){
											$p["divRow"][2] .= '<option value="'.$linha["id_cerveja"].'">'.$linha["nome_cerveja"].'</option>'; 
										}
											
								$p["divRow"][2] .= '
								</select>';
								echo'
							</div>
						</div>
						<button type="submit" class="btn btn-dark submit" >Enviar</button>
						</form>
                    </div>
                </div>
            </div>
		</p>';*/?>
		<p>
<!-- COMENTARIOS -->
		<div id="team-area">
			<div class="container">
				<?php				
					include "conexao.php";

					$select = "SELECT * FROM view_comentario";
					$resultado = $conexao->query($select);      
					$l = new LinhaComentario();
					
					foreach($resultado as $linha){					
					
						$p = new Comentario($linha);
						$l->add_comentario($p);
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
