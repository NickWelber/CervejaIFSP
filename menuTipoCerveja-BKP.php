<?php

    echo '
    <div id="about-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="main-title">Cervejas</h3>
                </div>

<!-- TIPO CERVEJA -->

                <div class="btn-group">
                    <div class="btns">
                        <button type="button" class="efeito efeito-1">
                        <a class="btn btn-outline" href="cervejas.php" id="cerveja">Todas</a></button>
                    </div>

                    <button type="button" data-toggle="dropdown" class="btn dropdown-toggle" aria-haspopup="true" aria-expanded="false">
                        <a  class="btn btn-outline-primary my-2 my-sm-0" href="cervejas.php" id="cerveja">Estilo de Cervejas</a>
                    </button>

                    <div class="dropdown-menu dropdown-menu-left">


                        <a  href="trigo.php" id="link"><button class="dropdown-item" type="button" id="trigo">
                            Trigo
                        </button></a>


                        <a  href="india.php" id="link"><button class="dropdown-item" type="button" id="india">
                            India Pale Ale (IPA)
                        </button></a>


                        <a  href="lager.php" id="link"><button class="dropdown-item" type="button" id="lager">
                            Lager
                        </button></a>


                        <a  href="pale.php" id="link"><button class="dropdown-item" type="button" id="pale">
                            Pale Ale 
                        </button></a>


                        <a  href="strong.php" id="link"><button class="dropdown-item" type="button" id="strong">
                            Strong Ale
                        </button></a>


                        <a  href="sour.php" id="link"><button class="dropdown-item" type="button" id="sour">
                            Sour
                        </button></a>


                        <a  href="porter.php" id="link"><button class="dropdown-item" type="button" id="porter">
                            Porter
                        </button></a>


                        <a  href="stout.php" id="link"><button class="dropdown-item" type="button" id="stout">
                            Stout
                        </button></a>


                    </div>
                </div>
            </div>
        </div>';
?>