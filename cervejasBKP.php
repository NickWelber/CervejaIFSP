<?php

    include "classeLayout/classeLayout.php";
    include "configuracaoCabecalho.php";

    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();
    $titulo = "Cervejas";

    echo '

	<div id="about-area">
        <div class="container">
            <div class="row">
				<div class="col-12">
					<h3 class="main-title">Cadastre Uma Cerveja</h3>
		
<!-- MENU LATERAL -->
					<div id="MenuLateral">
						<ul>
							<li><a class="nav-item nav-link" href="index.php">Home</a></li> 
							<li><a class="nav-item nav-link" href="trigo.php" id="link">Trigo</a></li> 
							<li><a class="nav-item nav-link" href="india.php" id="link">India Pale Ale (IPA)</a></li> 
							<li><a class="nav-item nav-link" href="lager.php" id="link">Lager</a></li> 
							<li><a class="nav-item nav-link" href="pale.php" id="link">Pale Ale</a></li>
							<li><a class="nav-item nav-link" href="sour.php" id="link">Sour</a></li>
							<li><a class="nav-item nav-link" href="porter.php" id="link">Porter</a></li>
							<li><a class="nav-item nav-link" href="stout.php" id="link">Stout</a></li>
						</ul>
					</div>

<!-- BOTÂO NOVA CERVEJA - TIPO CERVEJA -->

					<h3>&emsp;&emsp; Categorias de Cerveja</h3>
					<footer class="row">
						<div class="form-group col-sm-4 col-4">
							<button class="btn btn-primary" data-toggle="modal" data-target="#NovoServico">
								Nova Cerveja</button>
						</div>
						<div class="form-group col-sm-4 col-4">
							<button class="btn btn-primary" data-toggle="modal" data-target="#NovoCategoriaServico">
								Tipo Cerveja</button>
						</div>
					</footer>
				</div>
			</div>
		</div>
	</div>

<!-- TABELA COM VALORES -->	
	<div id="about-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="table-responsive">
						<table class="table dados-list table-striped table-bordered table-hover" id="servicos">
							<thead>
								<tr>
									<th>Código</th>
									<th>Imagem</th>
									<th>Tipo Cerveja</th>
									<th>Nome Cerveja</th>
									<th>Preço Cerveja</th>
									<th>Ano Cerveja</th>
									<th>Editar</th>			
									<th>Excluir</th>			
								</tr>
							</thead>
		
<!-- INCLUDE MODAL COM A NOVA CERVEJA -->
';
/*
		<?php
			include "conexao.php";

			// cria a instrução SQL que vai selecionar os dados
			$sql = "SELECT * FROM servico ORDER BY nome_servico";
			// executa a query
			$result = $conn->query($sql);

			while($linha = $result->fetch_assoc() ){
				echo '
				<tr class="servico-item">
					<td class="servico-id_servico">' .$linha['id_servico']. '</td>
					<td class="servico-id_servico_imagem">' .$linha['id_servico_imagem']. '</td>
					<td class="servico-id_categoria_servico">' .$linha['id_categoria_servico']. '</td>
					<td class="servico-nome_servico">' .$linha['nome_servico']. '</td>
					<td class="servico-preco_servico">' .$linha['preco_servico']. '</td>
					<td class="servico-data_servico">' .$linha['data_servico']. '</td>
					<td class="text-center">								
						<div class="servico-edit">
							<i class="material-icons text-warning" data-toggle="tooltip" 
								title="" data-original-title="Editar">create
							</i>
						</div>
					</td>
					<td class="text-center">	
						<div class="servico-delete">
							<i class="material-icons text-danger" data-toggle="tooltip" 
								title="" data-original-title="Excluir">delete
							</i>
						</div>
					</td>
				</tr>
				';
			}
		?>
*/
echo '
						<table class="dados-list table table-striped table-bordered table-hover" id="servico-list">
							<tbody >
							</tbody>
						</table>
						<tbody >
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

<!-- MODAL COM A NOVA CERVEJA -->	
<div class="modal fade" id="NovoServico">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Nova Cerveja</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form  action="salvar_servico.php" method="post"> 
				<input type="hidden" name="id_servico" id="id_servico" value="0" />
				<div class="modal-body">
					<div class="row">
						<div class="form-group col-sm-6 col-12">
							<label for="nome_servico">TIPO CERVEJA</label>
';
/*
					<?php
						echo '
							<select name="id_categoria_servico"  class="form-control">
								<option value=" ">::Selecione::</option>';
							require_once "conexao.php";

							$sql = "SELECT * FROM categoria_servico ORDER BY nome_categoria";
							$result = $conn->query($sql);

							foreach($result as $linha){
								echo '
									<option value="'.$linha['id_categoria_servico'].'">' 
										.$linha['nome_categoria'].'</option>
								'; 
							}
						echo '
							</select>
						';
					?>
*/
echo'
					</div>
					<div class="form-group col-sm-6 col-12">
						<label for="nome_servico">Nome Cerveja</label>
						<input type="text" name="nome_servico" id="nome_servico" class="form-control" required />
					</div>
				</div>					
				<div class="row">
					<div class="form-group col-sm-6 col-12">
						<label for="preco_servico">Preço Cerveja</label>
						<input type="text" name="preco_servico" id="preco_servico" class="form-control" required />
					</div>
					<div class="form-group col-sm-6 col-12">
						<label class="control-label" for="data_servico">Ano Cerveja</label>
						<div class="input-group date" data-provide="datepicker" 
							data-date-language="pt-BR">
							<input type="text" name="data_servico" id="data_servico" class="form-control">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-th"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
				<div class="modal-footer">
					<button type="reset" class="btn btn-danger">Limpar</button>
					<button type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</form>
		</div>
	</div>
	</div>

<!-- MODAL COM O NOVO TIPO CERVEJA -->	
	<div class="modal fade" id="NovoCategoriaServico">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Novo Tipo Cerveja</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			<form  action="salvar_categoria_servico.php" method="post"> 
				<input type="hidden" name="id_categoria_servico" id="id_categoria_servico" value="0" />
				<div class="modal-body">
					<div class="row">							
						<div class="form-group col-sm-6 col-12">
							<label for="nome_servico">Nome Tipo Cerveja</label>
							<input type="text" name="nome_categoria" id="nome_categoria" class="form-control" required />
						</div>
					</div>					
				</div>
				<div class="modal-footer">
					<button type="reset" class="btn btn-danger">Limpar</button>
					<button type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</form>
			</div>
		</div>
	</div>
';
        
    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();

    $rodape = new Rodape($p);
    $rodape->exibe();
?>    