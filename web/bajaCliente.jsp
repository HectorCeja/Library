<%@page import="libreria.modelo.MemberModelo"%>
<%@page import="libreria.controlador.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baja de Clientes</title>
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
                        <li><a href="bajaCliente.jsp" class="brand-logo center">Baja Cliente</a></li>
                    </ul>
                </div>
            </nav>
        <div class="center">
            <h5>Inserte sus datos:</h5>
        </div>
        <form  method="post" action="bajaCliente.jsp">
            <div class="center" >
                <table>
                    <tr>
                        <td style="width:37%">

                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="id_member" name="idmember" type="text" class="validate" required="">
                                <label for="idmember">Ingrese numero ID</label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="center">
                <input type="submit" name="borrarCliente" onclick="confirm('¿Seguro que deseas borrar el cliente?');" value="Borrar Cliente" class="waves-effect waves-light btn"/>
            </div>
        </form>
        <div id="uno" class="container">
            <%
                if (request.getParameter("borrarCliente") != null) {
                    MemberModelo.deleteMember(Integer.parseInt(request.getParameter("idmember")));
            %>
            <script>
                alert('El cliente ha sido borrado');
            </script> 
            <%}
            %> 
        </div>
    </body>
</html>