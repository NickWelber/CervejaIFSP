<?php
    include "validacaoUsuario.php";

    if($_SESSION["usuario"]["permissao"]!="2"){
    include "conexao.php";
    header("Content-Type: Application/json");

    $estilo = $_POST["estilo"];
    $insert = "INSERT INTO estilo(estilo) 
                    VALUES ('$estilo')";

    $conexao->query($insert);
    $select = "SELECT * FROM estilo ORDER BY estilo";
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