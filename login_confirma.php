<?php
    session_start();
    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json;charset=UTF-8');
    // include "conexao.php";

    if(isset($_POST['usuario']) && !empty($_POST['usuario']) && 
        isset($_POST['senha']) && !empty($_POST['senha'])){
            
            require 'conexao.php';
            require 'Usuario.class.php';

            $u = new Usuario();            

            $nome_usuario = addslashes($_POST['usuario']);
            $senha_usuario = addslashes($_POST['senha']);

            if($u->login($nome_usuario, $senha_usuario) == true){
                if(isset($_SESSION['idUser'])){
                    header("Location: comentario.php");
                }else{
                    header("Location: login.php");
                }

            }else{
                header("Location: login.php");
            }
            
    }else{
        header("Location: login.php");
    }

?>