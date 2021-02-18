<?php
	session_start();
	unset($_SESSION['idUser']);
	setcookie("id_usuario", "");
	setcookie("nome_usuario","");
	setcookie("senha_usuario","");
	setcookie("nome_completo","");
	header("Location: login.php");
?>