<%-- 
    Document   : doctoresCalificaciones
    Created on : 08-ago-2021, 19:20:57
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Calificaciones</title>
    </head>
    <body class="container" onload="cargarDoctores()">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Consultas Onlinea-Administrador</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
               <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="doctoresCalificaciones.jsp">Doctores</a>
                    <a class="nav-item nav-link" href="">Citas medicas</a>
                    <a class="nav-item nav-link" href="">Usuarios</a>
                    <a class="nav-item nav-link disabled" href="principal.jsp">añadir</a>
                </div>
            </div>            
        </nav>

        <div class="row" id="contenedorDoctores">
                         
        </div>

    </body>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="ajax.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
</html>
