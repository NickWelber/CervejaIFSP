<?php

    include "classeLayout/classeLayout.php";
    include "configuracaoCabecalho.php";

    $cabecalho = new Cabecalho($p);
    $cabecalho->exibe();
    $titulo = "Contato";

    echo '
        <p>
            <div id="contact-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="main-title">Entre em contato conosco</h3>
                        </div>
                        <div class="col-md-4 contact-box">
                            <i class="fas fa-phone"></i>
                            <p><span class="contact-title">Ligue para:</span> (16) 3322-4455</p>
                            <p><span class="contact-title">Horários:</span> 08:00 - 20:00</p>
                        </div>
                        <div class="col-md-4 contact-box">
                        <i class="fas fa-envelope"></i>
                            <p><span class="contact-title">Envie um e-mail:</span> contato@beerbeer.com.br</p>
                        </div>
                        <div class="col-md-4 contact-box">
                            <i class="fas fa-map-marker-alt"></i>
                            <p><span class="contact-title">Endereço:</span> Rua Lorem Ipsum BeerBeer - 1314</p>
                            <p><span class="contact-title">Cidade:</span> Araraquara - SP</p>
                        </div>
                        <div class="col-md-6" id="msg-box">
                            <p>Ou nos deixe uma mensagem:</p>
                        </div>
                        <div class="col-md-6" id="contact-form">
                            <form action="">
                                <input type="text" class="form-control" placeholder="Nome completo..." name="name" id="nome" required="required">
                                <input type="tel" class="form-control" placeholder="Telefone..." name="telefone" id="telefone" required="required"><br>
                                <input type="email" class="form-control" placeholder="E-mail..." name="email" id="email" required="required">
                                <input type="text" class="form-control" placeholder="Assunto..." name="assunto" id="assunto" required="required">
                                <textarea class="form-control" rows="3" placeholder="Sua mensagem..." name="menssagem" id="menssagem" required="required"></textarea>
                                <button type="submit" class="btn btn-dark submit" >Enviar</button>
                            </form>
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
                    