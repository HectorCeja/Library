
<%@page import="libreria.modelo.MemberModelo"%>
<%@page import="libreria.controlador.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baja de Prestamo</title>
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
                        <li><a href="bajaPrestamo.jsp" class="brand-logo center">Baja Prestamo</a></li>
                    </ul>
                </div>
            </nav>
        <div class="center">
            <h5>Inserte sus datos:</h5>
        </div>
        <form  method="post" action="bajaPrestamo.jsp">
            <div class="center" >
                <table>
                    <tr>
                        <td style="width:37%">

                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="id_member" name="isbn" type="text" class="validate" required="">
                                <label for="isbn">Ingrese isbn</label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="center" >
                <table>
                    <tr>
                        <td style="width:37%">

                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="id_member" name="copia" type="text" class="validate" required="">
                                <label for="copia">Ingrese No. Copia</label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="center">
                <input type="submit" name="borrarPrestamo" onclick="confirm('¿Seguro que deseas dar de baja el prestamo?');" value="Dar de baja Prestamo" class="waves-effect waves-light btn"/>
            </div>
        </form>
        <div id="uno" class="container">
            <%
                String mensaje="";
                if (request.getParameter("borrarPrestamo") != null) {
                    mensaje = MemberModelo.bajaPrestamo(Integer.parseInt(request.getParameter("isbn")),Integer.parseInt(request.getParameter("copia")));
                    if(mensaje.equals("")){
                        mensaje="El prestamo ha sido borrado exitosamente!";
                    }
            %>
            <script>
                alert('<%= mensaje%>');
            </script> 
            <%}%> 
        </div>
    </body>
</html>