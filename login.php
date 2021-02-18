<?php
    include "classeLayout/classeLayout.php";
	include "configuracaoCabecalho.php";
	
	$cabecalho = new Cabecalho($p);
	$cabecalho->exibe();
	$titulo = "Login";

	echo '
		<head>
			<link rel="stylesheet" href="css/login.css">
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
        </head>

  
<!-- TEMPLATE DO LOGIN -->
	<div class="login-form 
		col-xs-10 offset-xs-1 
        col-sm-6 offset-sm-3
        col-md-4 offset-md-4">
        <header>
            <h1><img class="img-fluid" src="img/logo_cerveja01.png" /></h1>
            <h2 class="text-center">Entre com seu <b>usuário</b> e <b>senha</b></h2>
        </header>
        <form action="login_confirma.php" method="POST">
            <div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="material-icons">account_circle</i>
					</div>
					<input type="text" name="usuario" class="form-control" id="usuario"
						placeholder="Nome de usuário... " required="required" />
				</div>
            </div>
            <div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="material-icons">lock</i>
					</div>
					<input type="password" name="senha" class="form-control password" id="senha" 
						data-cript="sha1, md5" placeholder="Senha..." required="required"  />
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<label><input type="checkbox" /> Lembre-me</label>
				</div>				
			</div>

<!-- TEMPLATE DO LOGIN - BOTAO CADASTRAR E ENTRAR -->
            <footer>
                <div class="float-right">
                    <button type="submit" class="btn btn-primary">Entrar</button>
                </div>
            </footer>
        </form>
        <div class="float-left"></div>
			<button style="background-color: silver" class="btn btn-default btn-cadastrar" data-toggle="modal" 
				data-target="#NovoUsuario">Cadastrar</button>
		</div>
	</div>
	
<!-- MODAL - CADASTRAR NOVO USUARIO -->
    <div class="modal" tabindex="-1" role="dialog" id="NovoUsuario">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Novo Usuário</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form action="salvarUsuario.php" method="post">
				<div class="modal-body">						
					<div class="row">
						<div class="form-group col-sm-12 col-xs-12">
							<label for="nome">Nome Completo*</label>
							<input type="text" name="nome_completo" id="nome_completo" class="form-control so-texto" required="required" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6 col-xs-12">
							<label for="nome">Sexo</label>
							<input type="text" name="sexo" id="sexo" class="form-control so-texto" />
						</div>
						<div class="form-group col-sm-6 col-xs-12">
							<label for="nome_usuario">Data Nascimento*</label>
							<input type="text" name="data_nascimento" id="data_nascimento" placeholder="aaaa-mm-dd" class="form-control" required="required"/>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6 col-xs-12">
							<label class="control-label">Telefone</label>
							<input type="text" name="telefone" id="telefone" class="form-control"/>
						</div>
						<div class="form-group col-sm-6 col-xs-12">
							<label class="control-label" for="e-mail">E-mail*</label>
							<input type="email" name="email" id="email" class="form-control" required="required"/>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-4 col-xs-12">
							<label for="nome_usuario">Cidade</label>
							<input type="text" name="cidade" id="cidade" class="form-control" />
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<label for="nome_usuario">Estado</label>
							<input type="text" name="estado" id="estado" class="form-control" placeholder="sigla(ex: SP, RJ"/>
						</div>
						<div class="form-group col-sm-4 col-xs-12">
							<label for="nome_usuario">País</label>
							<input type="text" name="pais" id="pais" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12 col-xs-12">
							<label for="nome_usuario">Nome de usuário*</label>
							<input type="text" name="nome_usuario" id="nome_usuario" class="form-control" required="required"/>
						</div>					
						<div class="form-group col-sm-6 col-xs-12">
							<label for="senha">Senha*</label>
							<input type="password" name="senha" class="form-control password" data-cript="sha1, md5" id="senhaNova" required="required"  />
						</div> 
						<div class="form-group col-sm-6 col-xs-12">
							<label for="senha">Confirmação de Senha*</label>
							<input type="password" name="senha" class="form-control password" data-cript="sha1, md5" id="senhaConfirmacao" required="required" />
						</div>
					</div>
				</div>

<!-- MODAL - BOTÂO LIMPAR E SALVAR -->
				<div class="modal-footer">
					<button type="reset" class="btn btn-danger">Limpar</button>
					<button type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</form>
		  </div>
		</div>
	</div>



	<!-- * jQuery, Json, Ajax, JavaScript -->
		<script src="js/jquery-3.5.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/validaform.min.js" type="text/javascript"></script>
	';


	include "configuracaoFooter.php";
	$footer = new Footer($p);
	$footer->exibe();

?>   