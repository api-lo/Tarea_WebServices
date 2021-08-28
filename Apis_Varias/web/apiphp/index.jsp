<%-- 
    Document   : index
    Created on : 15-jul-2021, 4:41:04
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
         <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link href="../recursos/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    </head>
    <style>
        ::-webkit-scrollbar{
            width: 10px;
            background-color: #F5F5F5;
        }
        ::-webkit-scrollbar-track{
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            background-color: #F5F5F5;
        }
        ::-webkit-scrollbar-thumb{
            background-color: #F90; 
            background-image: -webkit-linear-gradient(90deg,rgba(255, 255, 255, .2) 25%,transparent 25%,transparent 50%,rgba(255, 255, 255, .2) 50%,rgba(255, 255, 255, .2) 75%,transparent 75%,transparent)
        }
    </style>
    <body class="container" style="background: #343A40">
        <nav class="navbar navbar-expand-lg  navbar-dark bg-dark mb-3" style="border-bottom: 1px solid #fff">
            <a class="navbar-brand" href="index.jsp">Laboratorio</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="bi bi-house-door-fill nav-link" href="index.jsp"> Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a href="graficosExamenes.jsp" class="bi bi-info-square-fill nav-link btn" >
                             Report
                        </a>                        
                    </li>
                    <li class="nav-item">
                        <a href="../apiPython/doctoresCalificaciones.jsp" class="bi bi-info-square-fill nav-link btn" >
                             Doctoral Ratings
                        </a>                        
                    </li>
                    <li class="nav-item">
                        <a href="../apiPython/principal.jsp" class="bi bi-person-check-fill nav-link btn" >
                             Add doctors
                        </a>                        
                    </li>
                    <li class="nav-item">
                        <a href="registroExamen.jsp" class="bi bi-journal-plus nav-link btn" >
                             Add examen
                        </a>                        
                    </li>
                     <li class="nav-item">
                         <a href="registroInsumo.jsp" class="bi bi-cast nav-link btn" >
                             Add of insumo
                        </a>                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link bi bi-x-square-fill" href="#"> Exit</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row">
            <div class="col-12">
            </div>
        </div>
        <div class="row">
            <div class="col-12" >
                <div class="row">
                    <div class="col-12">
                        <h2 style="color: #fff" >Search for exam results</h2>                                       
                    </div>                    
                    <div class="col-12">
                        <div class="row">
                            <div class="col-12 pb-4">
                                <input id="busqueda" placeholder="Enter the patient's name or DNI" typEscriba el nombre o cedula del pacientee="text" class="form-control" >
                            </div>                                                     
                        </div>
                        <div  class="row">
                            <div class="col-2">
                                <input value="Search" onclick="consultarPornombre()" type="button" style="background: #FF9900; color: #fff" class="btn btn-block btn-sm">                                
                            </div> 
                            <div class="col-2">
                                <input value="Reset" onclick="consultaAjax()" type="button" style="background: #FFAD33; color: #fff" class="btn btn-block btn-sm">
                            </div>
                            <div class="col-2">
                                <div class="form-check">
                                    <input id="nombreCheck" onclick="autocompletad(true)" class="form-check-input" type="radio" value="" id="flexCheckDefault">
                                    <label style="color: #fff" class="form-check-label" for="flexCheckDefault">
                                        DNI
                                    </label>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="form-check">
                                    <input id="dniCheck" onclick="autocompletad(false)" class="form-check-input" type="radio" value="" id="flexCheckChecked">
                                    <label style="color: #fff" class="form-check-label " for="flexCheckChecked">
                                        Name
                                    </label>
                                </div> 
                            </div>
                        </div>
                        <div class="row mt-4 justify-content-center">
                            <div class="col-12">
                                <div class="alert alert-warning">
                                    <p>The only way to maintain your health is to eat what you don't want, drink what you don't like and do things you'd rather not do (Mark Twain)</p>
                                </div>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>         
        <div class="row mt-3">
            <div class="col-12">
                <h6 style="color: #fff">Lista de autos disponibles:</h6>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12" style="max-width: 100%; overflow-x: auto; max-height: 500px; overflow-y: auto">
                <table  class="table table-dark">
                    <thead>
                        <tr>                           
                            <th scope="col">Name</th>
                            <th scope="col">Last name</th>
                            <th scope="col">Birth</th>
                            <th scope="col">DNI</th>
                            <th scope="col">Genero</th>
                            <th scope="col">Leucocitos</th>                            
                            <th scope="col">Hemoglobina</th>                           
                            <th scope="col">Hematocrito</th>
                            <th scope="col">Hematies</th>
                            <th scope="col">VCM</th>
                            <th scope="col">HCM</th>
                            <th scope="col">CHCM</th>
                            <th scope="col">RDWCV</th>                            
                            <th scope="col">Linfocitos</th>
                            <th scope="col">Monocitos</th>
                            <th scope="col">Eosinofilos</th>
                            <th scope="col">Basofilos</th>
                            <th scope="col">VPM</th>
                            <th scope="col">Paquetes</th>
                            <th >Diagnosis</th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col"></th>

                        </tr>
                    </thead>
                    <tbody id="autosTable">

                    </tbody>
                </table>
            </div>
        </div>



        <!--Modales para ingresar datos-->
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Registration form</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="https://localhost/Php/add.php" method="POST" enctype="" >
                        <div class="modal-body">

                            <div class="alert alert-danger" hidden="True" role="alert">
                                All information must be entered
                            </div>
                            <div class="form-row">

                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Name:</label>
                                    <input name="Nombre" type="text" class="form-control form-control-sm" id="inputEmail4" >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Last name:</label>
                                    <input name="Apellido"  type="text" class="form-control form-control-sm" id="inputPassword4" >
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Date of birth:</label>
                                    <input name="FechaNacimiento"  type="text" class="form-control form-control-sm" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="inputPassword4">DNI:</label>
                                    <input name="DNI" type="number" class="form-control form-control-sm" id="inputPassword4" >
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="inputPassword4">Gender:</label>
                                    <select  class="form-control form-control-sm" name="Genero">
                                        <option>Masculine</option>
                                        <option>Female</option>
                                        <option>Unspecified</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label  for="inputEmail4">Leucocitos:</label>
                                    <input name="Leucocitos" type="number" class="form-control form-control-sm" id="inputEmail4" >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Hemoglobina:</label>
                                    <input name="Hemoglobina" type="number" class="form-control form-control-sm" id="inputPassword4" >
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Hematocrito:</label>
                                    <input name="Hematocrito" type="number" class="form-control form-control-sm" id="inputEmail4" >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Hematies:</label>
                                    <input name="Hematies" type="number" class="form-control form-control-sm" id="inputPassword4" >
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="inputEmail4">V.C.M</label>
                                    <input name="VCM" type="number" class="form-control form-control-sm" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="inputPassword4">H.C.M</label>
                                    <input name="HCM" type="number" class="form-control form-control-sm" id="inputPassword4">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="inputPassword4">C.H.C.M</label>
                                    <input name="CHCM" type="number" class="form-control form-control-sm" id="inputPassword4">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="inputPassword4">R.D.W.C.V</label>
                                    <input name="RDWCV" type="number" class="form-control form-control-sm" id="inputPassword4">
                                </div>
                            </div>


                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Linfocitos:</label>
                                    <input name="Linfocitos" type="number" class="form-control form-control-sm" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Monocitos:</label>
                                    <input name="Monocitos" type="number" class="form-control form-control-sm" id="inputPassword4">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Eosinofilos:</label>
                                    <input name="Eosinofilos" type="number" class="form-control form-control-sm" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Basofilos:</label>
                                    <input name="Basofilos" type="number" class="form-control form-control-sm" id="inputPassword4">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">V.P.M.</label>
                                    <input name="VPM" type="number" class="form-control form-control-sm" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Plaquetas:</label>
                                    <input name="Plaquetas" type="number" class="form-control form-control-sm" id="inputPassword4">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputAddress2">Medical diagnostics:</label>
                                <textarea name="Diagnosticos" class="form-control" >                                    
                                </textarea>                                
                            </div>                          

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-primary" value="Guardar">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Formulario ingreso</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="https://localhost/Php/add.php" method="POST" enctype="" >
                        <div class="modal-body">

                            <div class="alert alert-danger" hidden="True" role="alert">
                                Toda la información debe ser llenada
                            </div>
                            <div class="form-row">

                                <div class="form-group col-md-12">
                                    <label for="inputEmail4">Nombre de insumo:</label>
                                    <input name="Nombre" type="text" class="form-control form-control-sm" id="inputEmail4" >
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Fecha compra:</label>
                                    <input name="FechaNacimiento"  type="text" class="form-control form-control-sm" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="inputPassword4">Código de Insumo:</label>
                                    <input name="DNI" type="number" class="form-control form-control-sm" id="inputPassword4" >
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="inputPassword4">Categoria:</label>
                                    <select  class="form-control form-control-sm" name="Genero">
                                        <option>Muebles</option>
                                        <option>Medicina</option>
                                        <option>Materia desechable</option>
                                    </select>
                                </div>
                            </div> 

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Unidades:</label>
                                    <input name="VPM" type="number" class="form-control form-control-sm" id="inputEmail4">
                                </div>  
                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Cantidad:</label>
                                    <input name="VPM" type="number" class="form-control form-control-sm" id="inputEmail4">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Precio:</label>
                                    <input name="VPM" type="number" class="form-control form-control-sm" id="inputEmail4">
                                </div>                                  
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <input type="submit" class="btn btn-primary" value="Guardar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>       
    <script src="ajax.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
