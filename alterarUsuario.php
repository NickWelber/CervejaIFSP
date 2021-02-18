<?php

include("validacaoUsuario.php");

if($_SESSION["usuario"]["permissao"]!="2" && $_SESSION["usuario"]["permissao"]!="3"){


header("Content-Type: Application/json");

include "conexao.php";

$id = $_POST["id_usuario"];
$nome_usuario = $_POST["nome_usuario"];
$senha = $_POST["senha"];
$nome = $_POST["nome"];
$sexo = $_POST["sexo"];
$data_nascimento = $_POST["data_nascimento"];
$telefone = $_POST["telefone"];
$cidade = $_POST["cidade"];
$estado = $_POST["estado"];
$pais = $_POST["pais"];
$email = $_POST["email"];
$permissao = 2;

$update = "UPDATE usuario SET  
                        nome_usuario='$nome_usuario', senha='$senha', 
                        nome='$nome', sexo='$sexo', 
                        data_nascimento='$data_nascimento', 
                        telefone='$telefone', cidade='$cidade', 
                        estado='$estado', pais='$pais', 
                        email='$email',  permissao='$permissao' 
                    WHERE id_usuario='$id'";

$conexao->query($update);

$select = "SELECT * FROM usuario ORDER BY nome";

$resultado = $conexao->query($select);


foreach($resultado as $linha){
    $tabela[] = $linha;
}

echo json_encode($tabela);
}
else{
    header("location: login.php");
}
?>