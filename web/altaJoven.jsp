<%@page import="libreria.modelo.MemberModelo"%>
<%@page import="libreria.controlador.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Jovenes</title>
        <link rel="shortcut icon" type="image/png" href="img/copo.png"/>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="css/estilos.css"  media="screen,projection"/>
        <script src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
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
                        <li><a href="altaJoven.jsp" class="brand-logo center">Alta Joven</a></li>
                    </ul>
                </div>
            </nav>
        <div class="center">
            <h5>Inserte sus datos:</h5>
        </div>
        <div class="container">
            <form  method="post" action="altaJovenRespuesta.jsp">
                <div class="container">
                    <table class="center">
                        <tr>
                            <td style="width:15%"></td>
                            <td style="width:10%">
                                <div class="input-field col center">
                                    <input id="id_member" name="idmember" type="text" class="validate" required="">
                                    <label for="idmember">ID del Cliente</label>
                                </div>
                            </td>
                            <td style="width:15%"></td>
                        </tr>
                    </table>
                </div>
                <div class="container">
                    <table>
                        <tr>    
                            <td style="width:15%">
                                <div class="input-field col center ">
                                    <input id="nombre" name="nombre" type="text" class="validate" required="">
                                    <label for="nombre">Nombre</label>
                                </div>
                            </td>

                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="apellido" name="apellido" type="text" class="validate" required="">
                                    <label for="apellido">Apellido</label>
                                </div>
                            </td>
                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="inicial" name="inicial" type="text" class="validate" required="">
                                    <label for="inicial">Inicial</label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <table>
                    <tr>
                        <td style="width:37%">

                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="adulto" name="adulto" type="text" class="validate" required="">
                                <label for="adulto">Ingrese ID de adulto responsable</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:37%">

                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="fecha" name="fecha" type="text" class="validate" required="">
                                <label for="fecha">Fecha de nacimiento</label>
                            </div>
                        </td>
                    </tr>
                </table>

                <div class="center">
                    <input type="submit" name="altaJoven"  value="Dar de alta" class="waves-effect waves-light btn"/>
                </div>
            </form>
        </div>
    </body>
</html>