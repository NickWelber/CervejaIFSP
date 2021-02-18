<?php

    //include "validacaoUsuario.php";

    include "conexao.php";

    //header("Content-Type: Application/json");

    $nome_usuario = $_POST["nome_usuario"];
    $senha_usuario = $_POST["senha"];
    $nome_completo = $_POST["nome_completo"];
    $sexo = $_POST["sexo"];
    $data_nascimento = $_POST["data_nascimento"];
    $telefone = $_POST["telefone"];
    $cidade = $_POST["cidade"];
    $estado = $_POST["estado"];
    $pais = $_POST["pais"];
    $email = $_POST["email"];
    $permissao = 2;

    $insert = "INSERT INTO usuario(nome_usuario, senha_usuario, nome_completo, sexo, data_nascimento, telefone, 
                    cidade, estado, pais, email, permissao ) 
                VALUES ('$nome_usuario','$senha_usuario','$nome_completo','$sexo','$data_nascimento','$telefone',
                    '$cidade','$estado','$pais','$email','$permissao' )";


    $select = "SELECT * FROM usuario WHERE nome_usuario=\"$nome_usuario\" AND senha_usuario=\"$senha_usuario\"";

    $stmt = $conexao->prepare($select);

    $stmt->bindValue(":nome_usuario",$nome_usuario);
    $stmt->bindValue(":senha_usuario",$senha_usuario);

    $stmt->execute();

    session_start();
    $linha = $stmt->fetch();
    $_SESSION["nome_usuario"] = $linha;
    $conexao->query($insert);

    header("Location: login.php");
?>