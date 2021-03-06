<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="libreria.modelo.MemberModelo"%>
<%@page import="libreria.controlador.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Préstamos</title>
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
                        <li><a href="altaPrestamoRespuesta.jsp" class="brand-logo center">Alta Prestamo</a></li>
                    </ul>
                </div>
            </nav>
        <div class="center">
            <h5>Inserte sus datos:</h5>
        </div>
        <div class="center">
            <a class="waves-effect waves-light btn" href="altaPrestamo.jsp">Regresar</a>
        </div>
        <div id="uno" class="container">        
             <%  String infoMensaje = "";
                if (request.getParameter("altaPrestamo") != null) {
                     
                    infoMensaje = MemberModelo.altaPrestamo(Integer.parseInt(request.getParameter("isbn")), Integer.parseInt(request.getParameter("copia")), Integer.parseInt(request.getParameter("titulo")),Integer.parseInt(request.getParameter("member")),request.getParameter("salida") ,request.getParameter("entrega"));
                    if (infoMensaje.equals("")) {
                        infoMensaje = "Prestamo registrado con Éxito.!";
                    }%>
            <script>
                alert('<%= infoMensaje%>');
            </script>  
            <%  }%>
        </div>
    </body>
</html>