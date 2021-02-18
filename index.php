<?php

    include "classeLayout/classeLayout.php";

    include "configuracaoCabecalho.php";
    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();

    $titulo = "Index";

echo'
<br>
<!-- BANNER -->
    <div class="container-fluid">
        <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#mainSlider" data-slide-to="0" class="active"></li>
                <li data-target="#mainSlider" data-slide-to="1"></li>
                <li data-target="#mainSlider" data-slide-to="2"></li>
                <li data-target="#mainSlider" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/banner1.jpg" class="d-block w-100" alt="Beer-beeR">
                    <div class="carousel-caption d-md-block">
                        <h2>Nossa Gelada, Nossa Torre, Nosso Barril</h2>
                        <p>Unindo as Pessoas por um Mundo Melhor.</p>
                        <a href="votacao.php" class="main-btn">Veja as Votações</a>
                    </div>
                </div>      
                <div class="carousel-item">
                    <img src="img/banner2.jpg" class="d-block w-100" alt="Beer-beeR">
                    <div class="carousel-caption d-md-block">
                        <h2>De Cerveja a Gente Entende.</h2>
                        <p>As melhores marcas de cerveja do mercado para os paladares mais exigentes</p>
                        <a href="comentario.php" class="main-btn">Veja os Comentários</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/banner3.jpg" class="d-block w-100" alt="Beer-beeR">
                    <div class="carousel-caption d-md-block">
                        <h2>Cervejas!!!</h2>
                        <p>Às vezes, tudo que a gente precisa é de uma cerveja gelada.</p>
                        <a href="dicas.php" class="main-btn">Veja Nossas Dicas</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/banner4.jpg" class="d-block w-100" alt="Beer-beeR">
                    <div class="carousel-caption d-md-block">
                        <h2>Cacildis!!!</h2>
                        <p>Lorem Ipsum</p>
                        <a href="processo.php" class="main-btn">Veja Como Fazer</a>
                    </div>
                </div>
            </div>
            <a href="#mainSlider" class="carousel-control-prev" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a href="#mainSlider" class="carousel-control-next" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

<!-- GRID (ABOUT-SOBRE) -->
    <div id="about-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="main-title">Sobre Beer-beeR</h3>
                </div>
                <div class="col-md-6">
                    <img class="img-fluid" src="img/empresa.jpg" alt="Beer-beeR">
                </div>
                <div class="col-md-6">
                    <h3 class="about-title">Beber até entrar em Coma Alcoólico</h3>
                    <p>&emsp;&emsp; Não lembrar do que ocorreu no dia anterior.
                        Misturar tudo e não se preocupar com o amanhã.<br/>
                    &emsp;&emsp; Não há sensação melhor que ver um tio bêbado pagando mico. 
                        E descobrindo que você "É o tio bêbado".
                        Vergonha alheia pelos seus atos é pouco.<br/>
                    &emsp;&emsp; A bebida é o pior inimigo do homem, mas o homem que foge 
                        dos seus inimigos é um covarde.</p>
                    <p><b>A realidade pode ser o que você quiser no Matrix!</b></p>
                    <ul id="about-list">
                        <li><i class="fas fa-check"></i>Larguei a bebida… Só não lembro aonde.</li>
                        <li><i class="fas fa-check"></i>É melhor ser um bêbado conhecido do que um alcoólatra anônimo.</li>
                        <li><i class="fas fa-check"></i>Evite a ressaca, mantenha-se bêbado!</li>
                        <li><i class="fas fa-check"></i>Em terra de bêbado, álcool em gel é patê.</li>
                        <li><i class="fas fa-check"></i>A bebida só é um problema se o copo estiver vazio.</li>
                        <li><i class="fas fa-check"></i>Um bêbado de verdade só para de cair quando não consegue levantar mais.</li>
                        <li><i class="fas fa-check"></i>Fígado de bêbado é igual coração de mãe: sempre cabe mais um copo.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div> 
 

<!-- CALL TO ACTION (BOTÃO VOTAR) -->
    <div id="call-area">
        <div class="container">
            <div class="row">
                <p>Bora Votar!</p>
                <br/>
                <a href="votacao.php" class="main-btn" id="call-btn">🍻VOTAR🍻</a>
            </div>
        </div>
    </div>

<!-- SOBRE O CONSUMO RESPONSAVEL -->
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
                    <h4 class="card-title">Consumo na medida certa</h4>
                    <p>O consumo de álcool em grandes quantidades provoca sedação<br>
                     do sistema nervoso central, sonolência intensa, perda da<br>
                      coordenação motora, prejuízo do pensamento e até coma.</p>
                </div>
                <div class="col-md-6">
                    <h4 class="card-title">Gravidez e álcool não combinam</h4>
                    <p>O consumo, mesmo que moderado de álcool, de acordo com a<br>
                     Organização Mundial de Saúde (OMS) é proibido para mulheres<br>
                      grávidas ou tentando engravidar.</p>
                </div>
                <div class="col-md-6">
                    <h4 class="card-title">Proibido para menores</h4>
                    <p>Além de ser proibida por lei a venda e o consumo de bebidas<br>
                    alcoólicas para menores de 18 anos, a ingestão da bebida atrapalha <br>
                    o desenvolvimento do cérebro do menor que está ainda em crescimento.</p>   
                </div>
                <div class="col-md-2">
                    <img class="img-fluid" src="img/logo_cerveja04a.png" alt="Beer-beeR">
                </div>
                <div class="col-md-8"><br>
                <h2 class="card-title">Beba com moderação</h2>
                    <p>O ato de degustar uma bebida deve ser algo prazeroso, por isso<br>
                    não exagere, beba com moderação, com responsabilidade e<br>
                    divirta-se. Pratique atividade física regularmente. Sua saúde agradece!</p>
                </div>
                <div class="col-md-2">
                    <img class="img-fluid" src="img/logo_cerveja04b.png" alt="Beer-beeR">
                </div>
            </div>
        </div>
    </div>

<!-- CALL TO ACTION (BOTÃO COMENTAR) -->
    <div id="call-area">
        <div class="container">
            <div class="row">
                <p>Vamos Comentar!!!</p>
                <br/>
                <a href="comentario.php" class="main-btn" id="call-btn">🗣️COMENTAR🗣️</a>
            </div>
        </div>
    </div>
    </div> <!-- AQUI FECHA a div class="container-fluid" do BANNER -->
    </main> <!-- AQUI FECHA o main do BANNER -->

<!-- * RODAPÉ (FALE CONOSCO) -->
        <div id="contact-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 contact-box"></div>
                    <div class="col-md-6" id="msg-box">
                        <p>Ou Nos Deixe Uma Mensagem:</p>
                    </div>
                    <div class="col-md-6" id="contact-form">                        
                        <form action="contato.php" method="post" enctype="text/plain">
                            <input type="submit" class="main-btn" value="Registrar">
                        </form>
                    </div>
                    <div class="col-md-12 contact-box"></div>
                </div>
            </div>
        </div>
';

    include "configuracaoFooter.php";
    $footer = new Footer($p);
    $footer->exibe();

    $rodape = new Rodape($p);
    $rodape->exibe();
?>    
     