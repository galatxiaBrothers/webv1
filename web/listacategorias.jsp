<%@page import="java.util.ArrayList" %>
<%@page import="model.Categoria" %>
<% ArrayList<Categoria> listaCategorias = (ArrayList<Categoria>) request.getAttribute("listaCategorias"); %>
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
            <div class="col s8 m8 l8 xl8 offset-l4 offset-xl3">
                <h3>Categorias</h3>
                <div class="row">
                    <table class="highlight responsive-table">
                        <thead>
                            <tr>
                                <th>Id Categoria</th>
                                <th>Nombre Categoria</th>
                                <th>Detalle Categoria</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <% for (Categoria cat : listaCategorias) {

                            %>

                            <tr>
                                <td><% out.print(cat.getIdCategoria());%></td>
                                <td><% out.print(cat.getNombreCategoria());%></td>
                                <td><% out.print(cat.getDetalleCategoria());%></td>
                                <td>
                                    <a href="detallecategoria.jsp"><i class="material-icons">search</i></a>
                                    <a href="editarcategoria.jsp"><i class="material-icons">edit</i></a>
                                    <a href="collapsible.html"><i class="material-icons">delete</i></a>
                                </td>
                            </tr>

                            <% }%>

                        </tbody>
                    </table>
                </div>
            </div>

            <div class="col s12 m8 l9">
                <div class="row">
                    <a href="nuevacategoria.jsp" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
                </div>
            </div>
        </div>


        <script type="text/javascript">
            $(document).ready(function () {
                $('.sidenav').sidenav();
            });

        </script>

        <!--JavaScript at end of body for optimized loading-->
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>

