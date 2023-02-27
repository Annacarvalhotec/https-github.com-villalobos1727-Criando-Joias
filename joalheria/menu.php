<header>

<?php

    if(!isset($_SESSION["quant"])){
      $_SESSION["quant"] = 0;
    }

?>
            <div class="content">
                <div class="logo">
                    <img src="img/VJ.png" alt="logo">
                    <h3>VILLALOBOS JOALHERIA</h3>
                </div>
                <ul class="list-menu">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#sobrenos">Sobre nós</a></li>
                    <li><a href="#joias">JOIAS</a></li>
                    <li><a href="#contatos">Contatos</a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="frmcarrinho.php"><i class="fas fa-shopping-cart"></i></a></li>
                    <?php 
                        if($_SESSION["quant"]>0){
                         echo $_SESSION["quant"]; 
                        }
                     ?>
                </ul>

                <div class="menu-toggle">
                    <div class="one"></div>
                    <div class="two"></div>
                    <div class="three"></div>
                </div>

            </div>
        
    </header>