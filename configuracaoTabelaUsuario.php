<?php
    $p = null;
    $p["cabecalho"] = array("Nome Usuario","Senha","Nome","Sexo","Data de Nascimento","Telefone",
    "Cidade","Estado","Pais","E-mail","Permissao");

    include "conexao.php";

    $sql = "SELECT * FROM usuario ORDER BY nome";

    $resultado = $conexao->query($sql);

    foreach($resultado as $linha){
        $p["dados"][]=$linha;
    }
    $p["nome"] = "usuario";
?>