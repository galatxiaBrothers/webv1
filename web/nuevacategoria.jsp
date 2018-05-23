<!DOCTYPE html>
<html>
    <head>

        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <link rel="stylesheet" href="cstegorias.html">
        <link rel="stylesheet" href="editar.html">
        <link rel="stylesheet" href="index.html">
        <link rel="stylesheet" href="XD.html">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>

    <body>
        <nav>
            <div class="nav-wrapper #0097a7 cyan darken-2">
                <a href="#!" class="brand-logo center">MC 1615</a>
                <a href="#" data-target="slide-out" class="sidenav-trigger show-on-large"><i class="material-icons">menu</i></a>

                <!-- Navbar goes here -->
                <!-- navbar content here  -->

                <ul id="slide-out" class="sidenav">
                    <li><div class="user-view">
                            <div class="background">
                                <img src="imgs/1.jpg" class="responsive-img">
                            </div>
                            <a href="#user"><img class="circle" src="imgs/2.jpg"></a>
                            <a href="#name"><span class="Black-text name">Willy Gonzalez</span></a>
                            <a href="#email"><span class="Black-text email">Redimi2oficial@gmail.com</span></a>
                        </div></li>
                    <li><a href="index.html">MENU</a></li>
                    <li><a href="listacategorias.do">CATEGORIAS</a></li>
                    <li><a href="productos.html">PRODUCTOS</a></li>
                </ul>
            </div>
        </nav>

        <div class="row">
            <div class="col s8 m8 l8 xl8 offset-m1 offset-l4 offset-xl3">
                <h3>Nueva Categoria</h3>
                <div class="row">

                    <form class="col s12" action="nuevacategoria.do" method="post">
                        <div class="row">
                            <div class="input-field col s12">
                                <input type="text" id="txtnombre" name="txtnombre" class="validate">
                                <label for="txtnombre">Nombre Categoria</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input type="text" id="txtdetalle" name="txtdetalle" class="validate">
                                <label for="txtdetalle">Detalle Categoria</label>
                            </div>
                        </div>
                        <div class="row">
                            <button class="btn waves-effect waves-light" type="submit" name="action">Guardar
                                <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </form>

                </div>
            </div>
        </div


        <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      
      <script>
          
          $( document ).ready(function(){
              
                  $(".button-collapse").sideNav();
                  //$(".side-nav").sideNav('show');
                   $('.collapsible').collapsible();

          })
          
      </script>   
    </body>
  </html>

