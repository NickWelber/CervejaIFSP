<?php

include("validacaoUsuario.php");

if($_SESSION["usuario"]["permissao"]!="2" && $_SESSION["usuario"]["permissao"]!="2"){

header("Content-Type: Application/json");

include "conexao.php";
$estilo = $_POST["estilo"];
$id_estilo = $_POST["id_estilo"]

$update = "UPDATE estilo SET 
                            estilo='$estilo'                 
                         WHERE id_estilo='$id_estilo'";

$conexao->query($update);

$select = "SELECT * FROM estilo ORDER BY tipo";

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