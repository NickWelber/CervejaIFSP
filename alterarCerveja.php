<?php

include("validacaoUsuario.php");

if($_SESSION["usuario"]["permissao"]!="2" && $_SESSION["usuario"]["permissao"]!="2"){

header("Content-Type: Application/json");

include "conexao.php";
$id_cerveja = $_POST["id_cerveja"];
$imagem = $_POST["imagem"];
$nome_cerveja = $_POST["nome_cerveja"];
$volume = $_POST["volume"];
$teor_alcool = $_POST["teor_alcool"];
$amargor = $_POST["amargor"];
$temperatura = $_POST["temperatura"];
$cod_estilo = $_POST["cod_estilo"];
$preco = $_POST["preco"];


$update = "UPDATE cerveja SET 
                            imagem='$imagem', nome_cerveja='$nome_cerveja',
                            volume='$volume', teor_alcool='$teor_alcool',
                            amargor='$amargor', temperatura='$temperatura',
                            cod_estilo='$cod_estilo', preco='$preco'                
                         WHERE id_cerveja='$id_cerveja'";

$conexao->query($update);

$select = "SELECT * FROM view_cerveja ORDER BY id_cerveja";

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