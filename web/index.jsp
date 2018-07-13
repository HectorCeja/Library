
<%@page import="libreria.controlador.Member"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenidos</title>
        <link rel="shortcut icon" type="image/png" href="img/copo.png"/>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="css/estilos.css"  media="screen,projection"/>
        <script src="js/materialize.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.parallax').parallax();
            });
        </script>
        <style>
            body,html{
                background: url(img/libreria.jpg); 
                background-repeat: no-repeat; 
                background-size: cover; 
                background-attachment: fixed; 
            }
            .parallax-container {
                height: 250px;
            }
        </style>
    </head>
    <body>
        <div class="navbar-fixed">
            <nav>
                <div class="nav-wrapper blue ">
                    <a href="index.jsp" class="brand-logo right"></a>
                    <ul id="nav-mobile" class="left hide-on-med-and-down">
                        <li>
                            <a href="index.jsp">Inicio</a>
                        </li>
                        <li>
                            <div class="dropdown">
                                <button class="dropbtn">  Alta  </button>
                                <div class="dropdown-contenido">
                                    <a href="altaJoven.jsp">Alta Joven</a>
                                    <a href="altaCliente.jsp">Alta Usuarios</a>
                                    <a href="altaAdulto.jsp">Alta Adulto</a>
                                    <a href="altaPrestamo.jsp">Alta Prestamos</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown">
                                <button class="dropbtn">  Baja   </button>
                                <div class="dropdown-contenido">
                                    <a href="bajaCliente.jsp">Baja Usuarios</a>
                                    <a href="bajaAdulto.jsp">Baja Adultos</a>
                                    <a href="bajaPrestamo.jsp">Baja Prestamos</a>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </nav>
        </div>
        <div class="parallax-container">
            <div class="parallax"><img src="img/libreria.jpg"></div>
        </div>
   
        <div class="parallax-container">
            <div class="parallax"><img src="img/libro.jpg"></div>
        </div>
        
    </body>
</html>
