<?php
    $p = null;
    $p["cabecalho"] = array("Nome","Cerveja","Comentario","Data",
        "Horario");

    include "conexao.php";

    $sql = "SELECT id_comentario, nome_completo, nome_cerveja, comentario, data, 
        horario FROM view_comentario";

    $resultado = $conexao->query($sql);

    foreach($resultado as $linha){
        $p["dados"][]=$linha;
    }
    $p["nome"] = "comentario";
?>