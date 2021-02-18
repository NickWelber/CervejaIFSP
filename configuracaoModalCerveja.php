<?php

$p["id"] = "Cerveja";
$p["titulo"] = "Cerveja";

$p["divRow"][0] = '
<div class="row">
    Carregar Foto:
    <div class="form-group col-sm-12 col-12">	                            
        <input type="file" name="imagem" 
        id="imagem" class="form-control"  />
    </div>
</div>';

$p["divRow"][1] = '
<div class="row">
    <div class="form-group col-sm-12 col-12">	                            
        <input type="text" name="nome_cerveja" 
        id="nome_cerveja" class="form-control" placeholder= "Nome Cerveja..." />
    </div>
</div>';

$p["divRow"][2] = '
<div class="row">
    <div class="form-group col-sm-12 col-12">	                            
        <input type="number" name="volume" 
        id="volume" class="form-control" placeholder= "Volume..."/>
    </div>
</div>';

$p["divRow"][3] = '
<div class="row">
    <div class="form-group col-sm-6 col-6">	                            
        <input type="number" name="teor_alcool" 
        id="teor_alcool" class="form-control" min="1" step="0.1" placeholder= "Teor alcoolico..."/>
    </div>
    <div class="form-group col-sm-6 col-6">	                            
        <input type="number" name="amargor" 
        id="amargor" class="form-control" min="0" step="1" placeholder= "Amargor..."/>
    </div>
</div>';

$p["divRow"][4] = '
<div class="row">
    <div class="form-group col-sm-6 col-6">	                            
    <input type="text" name="Temperatura" 
    id="temperatura" class="form-control" min="0" step="1" placeholder= "Temperatura..."/>
    </div>
    <div class="form-group col-sm-6 col-6">	                            
        <select name="cod_estilo" class="form-control">
            <option>::Selecione Estilo::</option>';
        require_once "conexao.php";

        $select = "SELECT id_estilo, estilo FROM estilo ORDER BY estilo";
        $resultado = $conexao->query($select);
        foreach($resultado as $linha){
            $p["divRow"][4] .= '<option value="'.$linha["id_estilo"].'">'.$linha["estilo"].'</option>'; 
        }
            
$p["divRow"][4] .= '
        </select>
    </div>
</div>';

$p["divRow"][5] = '
<div class="row">
    <div class="form-group col-sm-6 col-6">	                            
        <input type="number" name="preco" 
        id="preco" class="form-control" min="1" step="0.01" placeholder= "Preço..."/>
    </div>
</div>';

?>