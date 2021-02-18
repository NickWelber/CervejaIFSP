<?php	
	session_start();
	
	if($_SESSION["nome_usuario"]["permissao"]=="1"){	
		include "conexao.php";

		header("Content-Type: application/json");
		
		$nome_arquivo = @date("Ymdhis").$_FILES["imagem"]["name"];
		$local = "img_upload/".$nome_arquivo;
		// tira o arquivo da pasta temporaria  para a pasta definitiva
		if(move_uploaded_file($_FILES["imagem"]["tmp_name"], $local)){
			$upload = true;
		}
		else{
			$upload = false;
		}
		$imagem = "<img src=\"img_upload/$nome_arquivo\" class=\"imagem\"/>";
		$nome_cerveja = $_POST["nome_cerveja"];
		$volume = $_POST["volume"];
		$teor_alcool = $_POST["teor_alcool"];
		$amargor = $_POST["amargor"];
		$temperatura = $_POST["temperatura"];
        $cod_estilo = $_POST["cod_estilo"];
        $preco = $_POST["preco"];

		$insert = "INSERT INTO cerveja(imagem, nome_cerveja, volume, teor_alcool, amargor, temperatura, cod_estilo, preco) 
                VALUES ('$imagem','$nome_cerveja','$volume','$teor_alcool','$amargor','$temperatura', '$cod_estilo', '$preco')";
		 
		$conexao->query($insert);
		$select = "SELECT * FROM cerveja ORDER BY nome_cerveja";
		$resultado = $conexao->query($select);

		foreach($resultado as $linha){
			$tabela[] = $linha;
		}
		$tabela['erro'] = 0;
		echo json_encode($tabela);		
	}else{
		$tabela['erro'] = 1;
		echo json_encode($tabela);
	}
?>