<%-- 
    Document   : index
    Created on : 08-ago-2021, 2:49:26
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Consultas Onlinea</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"></a>
                    </li>                               
                </ul>
                <form class="form-inline my-2 my-lg-0">                    
                    <button class="btn btn-outline-success my-2 my-sm-0" type="button">Información</button>
                </form>
            </div>
        </nav>
        <div class="row">
            <div class="col-12" >
                <div style="width:400px; height: 300px;
                     margin: 0px auto; padding: 30px; border-radius: 10px">
                    <div class="row" style="border: 1px solid #0c5460; border-radius: 10px; padding: 20px">
                        <div class="col-12">
                            <img style="width: 200px; height: 200px; position: relative; left: 20%" 
                                 src="https://res.cloudinary.com/durxpegdm/image/upload/v1628410393/220px-Wiki_Project_Med_Foundation_logo.svg_czvmfp.png" />
                        </div>
                        <div class="col-12">
                           
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="nameUsuario" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password"  class="form-control" id="contraUsuario" placeholder="Password">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Recordar contraseña</label>
                                </div>
                                <button onclick="consultaAjaxUsuario()" href="doctoresCalificaciones.jsp" style="margin-bottom: 10px"  class="btn btn-primary btn-block">Ingresar a consultorio</button>
                            
                        </div>
                    </div>
                </div>             
            </div>
        </div>
    </body>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="ajax.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
</html>

