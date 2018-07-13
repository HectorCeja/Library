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
        <title>Alta Cliente</title>
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
                        <li><a href="altaCliente.jsp" class="brand-logo center">Alta Cliente</a></li>
                    </ul>
                </div>
            </nav>
        <div class="center">
            <h5>Inserte sus datos:</h5>
        </div>
        <form  method="post" action="altaCliente.jsp">
            <div class="center" >
                <table>
                    <tr>
                        <td style="width:37%">

                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="id_member" name="idmember" type="text" class="validate" required="">
                                <label for="id_member">ID</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:37%">

                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="id_member" name="name" type="text" class="validate" required="">
                                <label for="name">Nombre</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:37%">
                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="id_member" name="lastname" type="text" class="validate" required="">
                                <label for="lastname">Apellido</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:37%">
                        </td>
                        <td>
                            <div class="input-field col center" style="width:40%">
                                <input id="id_member" name="initial" type="text" class="validate" required="">
                                <label for="initial">Inicial</label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="center">
                <input type="submit" name="altaCliente" value="Alta Cliente" class="waves-effect waves-light btn"/>
            </div>
        </form>
        <div id="mensaje" class="container">
            <%
                if (request.getParameter("altaCliente") != null) {

                    LinkedList<Member> listaContactos = MemberModelo.getContactos();
                    boolean flag = true;
                    for (int i = 0; i < listaContactos.size(); i++) {
                        if (listaContactos.get(i).getId() == Integer.parseInt(request.getParameter("idmember"))) {
                            flag = false;
                        }
                    }

                    if (flag == true) {
                        MemberModelo.insertMember(Integer.parseInt(request.getParameter("idmember")), request.getParameter("name"), request.getParameter("initial"), request.getParameter("lastname"));
                    } else {

            %>
            <script>alert('El cliente con el ID ingresado ya se ha registrado');</script>
            <%      }
                }%>
        </div>
    </body>
</html>
