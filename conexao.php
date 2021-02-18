<?php

    $sgbd = "mysql";
    $local = "localhost";
    $nome_bd = "cerveja";
    $usuario = "root";
    $senha = "";

    global $conexao;
    try{
        $conexao = new PDO("$sgbd:host=$local;dbname=$nome_bd;charset=utf8",$usuario,$senha);
        $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }catch(PDOException $e){
        echo "ERRO: ".$e->getMessage();
        exit;
    }
    

?>
