<?php

$p["id"] = "Comentario";
$p["titulo"] = "Comentario";

$p["divRow"][0] = '
<div class="row">
    <div class="form-group col-sm-6 col-6">	                            
        <select name="cod_usuario" class="form-control">
            <option>::Selecione Nome::</option>';
                require_once "conexao.php";

                $select = "SELECT id_usuario, nome_completo FROM usuario ORDER BY nome_completo";
                $resultado = $conexao->query($select);
                foreach($resultado as $linha){
                    $p["divRow"][0] .= '<option value="'.$linha["id_usuario"].'">'.$linha["nome_completo"].'</option>'; 
                }
            
$p["divRow"][0] .= '
        </select>
    </div>
</div>';

$p["divRow"][1] = '
<div class="row">
    <div class="form-group col-sm-6 col-6">	                            
        <label for="descricao">Comentario</label>
        <textarea name="descricao" for="descricao" 
        id="descricao" class="form-control" ></textarea><br />
    </div>
</div>';

p["divRow"][2] = '
<div class="row">
    <div class="form-group col-sm-6 col-6">	                            
        <input type="time" name="horario" 
        id="horario" class="form-control" placeholder= "Horario..."/>
    </div>
</div>';

$p["divRow"][3] = '
<div class="row">
    <div class="form-group col-sm-6 col-6">	                            
    <input type="date" name="data" 
    id="data" class="form-control" placeholder= "Data..."/>
    </div>
    <div class="form-group col-sm-6 col-6">	                            
        <select name="cod_cerveja" class="form-control">
            <option>::Selecione Cerveja::</option>';
        require_once "conexao.php";

        $select = "SELECT id_cerveja, nome_cerveja FROM cerveja ORDER BY nome_cerveja";
        $resultado = $conexao->query($select);
        foreach($resultado as $linha){
            $p["divRow"][2] .= '<option value="'.$linha["id_cerveja"].'">'.$linha["nome_cerveja"].'</option>'; 
        }
            
$p["divRow"][3] .= '
        </select>
    </div>
</div>';
			
?>