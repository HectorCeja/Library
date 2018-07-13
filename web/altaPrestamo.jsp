<%@page import="java.util.LinkedList"%>
<%@page import="libreria.controlador.Member"%>
<%@page import="libreria.modelo.MemberModelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/png" href="img/copo.png"/>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="css/estilos.css"  media="screen,projection"/>
        <script src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <title>Alta Préstamo</title>
    </head>
    <body>
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
                        <li><a href="altaPrestamo.jsp" class="brand-logo center">Alta Prestamo</a></li>
                    </ul>
                </div>
            </nav>
        <div class="center">
            <h5>Inserte sus datos:</h5>
        </div>
        <div class="container">
            <form  method="post" action="altaPrestamoRespuesta.jsp">
                <div class="container">
                    <table>
                        <tr>    
                            <td style="width:15%">
                                <div class="input-field col center ">
                                    <input id="nombre" name="isbn" type="text" class="validate" required="">
                                    <label for="isbn">Isbn</label>
                                </div>
                            </td>

                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="apellido" name="copia" type="text" class="validate" required="">
                                    <label for="copia">No. Copia Libro</label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="container">
                    <table>
                        <tr>    
                            <td style="width:15%">
                                <div class="input-field col center ">
                                    <input id="nombre" name="titulo" type="text" class="validate" required="">
                                    <label for="titulo">No. Título Libro</label>
                                </div>
                            </td>

                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="apellido" name="member" type="text" class="validate" required="">
                                    <label for="member">ID Usuario</label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                 <div class="container">
                    <table>
                        <tr>    
                            <td style="width:15%">
                                <div class="input-field col center ">
                                    <input id="nombre" name="salida" type="text" class="validate" required="">
                                    <label for="salida">Fecha Salida</label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="container">
                    <table>
                        <tr>    
                            <td style="width:15%">
                                <div class="input-field col center ">
                                    <input id="nombre" name="entrega" type="text" class="validate" required="">
                                    <label for="entrega">Fecha Entrega</label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="center">
                    <input type="submit" name="altaPrestamo"  value="Dar de alta" class="waves-effect waves-light btn"/>
                </div>
            </form>
        </div>
    </body>
</html>
