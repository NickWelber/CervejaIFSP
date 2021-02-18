<?php
    include "validacaoUsuario.php";

    if($_SESSION["usuario"]["permissao"]!="2"){

    include "conexao.php";
    header("Content-Type: Application/json");

    $descricao = $_POST["descricao"];
    $horario = $_POST["horario"];
    $data = $_POST["data"];
    $cod_cerveja = $_POST["cod_cerveja"];
    $cod_usuario = $_POST["cod_usuario"];

    $insert = "INSERT INTO comentario(descricao, horario, data, 
        cod_cerveja, cod_usuario) 
                VALUES ('$descricao','$horario', '$data', 
        '$cod_cerveja', '$cod_usuario')";

$conexao->query($insert);
$select = "SELECT * FROM view_comentario ORDER BY data";
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
