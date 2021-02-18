<?php

    include "classeLayout/classeLayout.php";

    include "configuracaoCabecalho.php";
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();

    $titulo = "Consumo";


                echo '
                <p>
                <div id="contact-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h3 class="main-title">Consumo Responsável</h3>
                            </div>
                            <div class="col-md-6">
                                <h4 class="card-title">Álcool e direção, fuja dessa mistura</h4>
                                <p>Atualmente dirigir sob qualquer concentração de álcool por litro<br>
                                de sangue é crime, o infrator pode ser penalizado com multa,<br>
                                 apreensão da carteira de motorista e até detenção.</p>
                            </div>
                            <div class="col-md-6">
                                </p>bebidas alcoólicas atrapalha o desenvolvimento<br>
                                do cérebro do menor que está ainda em crescimento.</p>
                            </div>
                            <div class="col-md-6">
                                <h4 class="card-title">Consumo na medida certa</h4>
                                <p>O consumo de álcool em grandes quantidades provoca sedação<br>
                                 do sistema nervoso central, sonolência intensa, perda da<br>
                                  coordenação motora, prejuízo do pensamento e até coma.</p>
                            </div>
                            <div class="col-md-6">
                                <h4 class="card-title">Gravidez e álcool não combinam</h4>
                                <p>O consumo, mesmo que moderado de álcool, de acordo com a<br>
                                 Organização Mundial de Saúde (OMS) é proibido para mulheres<br>
                                  grávidas ou tentando engravidar.<p>
                            </div>
                            <div class="col-md-6">
                                <h4 class="card-title">Proibido para menores</h4>
                                <p>Além de ser proibida por lei a venda e o consumo de bebidas<br>
                                 alcoólicas para menores de 18 anos, a ingestão de</p>   
                            </div>
                            <div class="col-md-6">
                                <p>O ato de degustar uma bebida deve ser algo prazeroso, por isso<br>
                                não exagere, beba com moderação, com responsabilidade e<br>
                                divirta-se. Pratique atividade física regularmente. Sua saúde agradece!</p>
                            </div>
                        </div>
                    </div>
                </div>
                </p>';
    
    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();
            
    $rodape = new Rodape($p);
    $rodape->exibe();
?>       