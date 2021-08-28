<!DOCTYPE html>
<html>
    <head>
        <title>Google Login</title>
        <link rel="shortcut icon" href="#">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
              crossorigin="anonymous">
        <link href="recursos/Estilos.css" rel="stylesheet" type="text/css"/>
        <script src="jquery-3.4.1.min.js" type="text/javascript"></script>
        <style>
            .fondo{
                background-image:  url(recursos/img/stethoscope-840125.jpg);
                background-repeat:inherit;
                background-size: cover;
                width: 100%;
             
            }
        </style>
    <body class="fondo" >
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>       
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-analytics.js"></script>        
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-firestore.js"></script> 
        <div class="container">                        
            <div id="login" class="login" >
                <div class="row p-5">
                    <div class="col-12">
                        <div style="font-size: 38px; font-style: oblique; font-weight: bold; text-align: center; width: 100%; color: #fff">Clinic Chespirito</div>
                    </div>
                    <div class="col-12 mt-2">
                        <label style="font-weight: bold " >Email o UserName</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="col-12 mt-3">
                        <label  style="font-weight: bold " >Password</label>
                        <input type="password" class="form-control">
                    </div>
                    <div class="col-12 mt-5">
                        <input style="width: 100%" class="btn btn-block btn-dark" type="button" value="Log in" />
                    </div>

                    <div class="col-12 mt-5">
                        <div class="row">
                            <div class="col-4">
                                <input  type="submit" class="btn btn-light imgF ajuste" value="" onclick="loginWithFacebook()" />
                            </div>
                            <div class="col-4">
                                <input  type="submit" onclick="loginWithGithub()" class="btn btn-light imgG ajuste" value="" />
                            </div>
                            <div class="col-4">
                                <input  type="submit" onclick="iniciarGoogle()" class="btn btn-light imgGo ajuste" value="" />
                            </div>
                        </div>
                    </div>

                    <div class="col-12 mt-1">
                        <div class="row">
                            <div class="col-12">
                                <input  type="submit" onclick="iniciaryahoo()" class="btn btn-light imgY ajuste"  value="" />
                            </div>                       
                        </div>
                    </div>

                </div>  
            </div>
        </div>               
        <script src="Metodos.js" type="text/javascript"></script>
    </body>
</html>