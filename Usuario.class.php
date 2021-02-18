<?php
    class Usuario{
        public function login($nome_usuario, $senha_usuario){
            global $conexao;

// AQUI SERVE PARA LOGAR //            
            $sql = "SELECT * FROM usuario WHERE 
                    nome_usuario=\"$nome_usuario\" AND senha_usuario=\"$senha_usuario\"";  

            $sql = $conexao->prepare($sql);
            $sql->bindValue("nome_usuario", $nome_usuario);
            $sql->bindValue("senha_usuario", md5($senha_usuario));
            $sql->execute();

            if($sql->rowCount() > 0){
                $dado = $sql->fetch();
                
                $_SESSION['idUser'] = $dado['id_usuario'];

                return true;
            }else{
                return false;
            }
        }

// AQUI SERVE PARA MOSTAR NOME LOGADO //  
        public function logged($id_usuario){
            global $conexao;

            $array = array();
            $sql = "SELECT nome_usuario FROM usuario WHERE 
                    id_usuario=\"$id_usuario\"";
            $sql = $conexao->prepare($sql);
            $sql->bindValue("id_usuario", $id_usuario);
            $sql->execute();

            if($sql->rowCount() > 0){
                $array = $sql->fetch();
            }
            return $array;
        }
    }
?>