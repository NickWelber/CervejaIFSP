<?php
    include "conexao.php";

    if(isset($_SESSION['idUser'])){
        require_once "Usuario.class.php";
        $u = new Usuario();

        $listLogged = $u->logged($_SESSION['idUser']);
        $nomeUser = $listLogged['nome_usuario'];
    }else{
        header("Location: login.php");
    }

?>