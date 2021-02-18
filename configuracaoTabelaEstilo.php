<?php
    $p = null;
    $p["cabecalho"] = array("Estilo");

    include "conexao.php";

    $sql = "SELECT * FROM estilo ORDER BY estilo";

    $resultado = $conexao->query($sql);

    foreach($resultado as $linha){
        $p["dados"][]=$linha;    
    }
    $p["nome"] = "estilo";
?>