<?php
    $p = null;
    $p["cabecalho"] = array("Imagem","Cerveja","Volume","Teor Alcoolico",
        "Amargor","Temperatura","Estilo","Preco");

    include "conexao.php";

    $sql = "SELECT id_cerveja, CONCAT(\"<img src='\",imagem,\"' class='foto' />\") AS img, 
        nome_cerveja, volume, teor_alcool, amargor, temperatura, 
        estilo, preco 
        FROM view_cerveja ";

    $resultado = $conexao->query($sql);

    foreach($resultado as $linha){
        $p["dados"][]=$linha;
    }
    $p["nome"] = "cerveja";
?>