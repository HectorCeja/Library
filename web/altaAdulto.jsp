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
        <title>Alta Adulto</title>
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
                        <li><a href="altaAdulto.jsp" class="brand-logo center">Alta Adulto</a></li>
                    </ul>
                </div>
            </nav>
        <div class="center">
            <h5>Inserte sus datos:</h5>
        </div>
        <div class="container">
            <form  method="post" action="altaAdultoRespuesta.jsp">
                <div class="container">
                    <table>
                        <tr>    
                            <td style="width:15%">
                                <div class="input-field col center ">
                                    <input id="nombre" name="member_no" type="text" class="validate" required="">
                                    <label for="member_no">ID usuario</label>
                                </div>
                            </td>

                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="apellido" name="name" type="text" class="validate" required="">
                                    <label for="name">Nombre</label>
                                </div>
                            </td>
                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="inicial" name="ape" type="text" class="validate" required="">
                                    <label for="ape">Apellido</label>
                                </div>
                            </td>
                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="inicial" name="ini" type="text" class="validate" required="">
                                    <label for="ini">Inicial</label>
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
                                    <input id="nombre" name="calle" type="text" class="validate" required="">
                                    <label for="calle">Calle</label>
                                </div>
                            </td>

                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="apellido" name="zipcode" type="text" class="validate" required="">
                                    <label for="zipcode">Codigo postal</label>
                                </div>
                            </td>
                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="inicial" name="city" type="text" class="validate" required="">
                                    <label for="city">Ciudad</label>
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
                                    <input id="nombre" name="state" type="text" class="validate" required="">
                                    <label for="state">Estado</label>
                                </div>
                            </td>

                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="apellido" name="phone_no" type="text" class="validate" required="">
                                    <label for="phone_no">Telefono</label>
                                </div>
                            </td>
                            <td style="width:15%">
                                <div class="input-field col center">
                                    <input id="inicial" name="fecha_nac" type="text" class="validate" required="">
                                    <label for="fecha_nac">Fecha de nacimiento</label>
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
                                <input id="adulto" name="exp" type="text" class="validate" required="">
                                <label for="exp">Fecha de Expiración</label>
                            </div>
                        </td>
                    </tr>
                </table>

                <div class="center">
                    <input type="submit" name="altaAdulto"  value="Dar de alta" class="waves-effect waves-light btn"/>
                </div>
            </form>
        </div>
    </body>
</html>
