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
        <link href="../recursos/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Calificaciones</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    </head>
    <body class="container" onload="cargarDoctores()" style="background: #343A40">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Consultorio Chespirito</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
               <div class="navbar-nav">
                    <a class="nav-item nav-link active bi bi-house-fill " href="doctoresCalificaciones.jsp"> Inicio</a>                                        
                    <a class="nav-item nav-link bi bi-arrow-left-square" href="../apiphp/index.jsp"> Atras</a>
                </div>
            </div>            
        </nav>

        <div class="row" id="contenedorDoctores">
                         
        </div>

    </body>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="../recursos/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="ajax.js" type="text/javascript"></script>
    <script src="../recursos/js/bootstrap.js" type="text/javascript"></script>
</html>
