<%-- 
    Document   : registroExamen
    Created on : 26-ago-2021, 1:35:52
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Report</title>        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">        
        <link href="../recursos/css/bootstrap.css" rel="stylesheet" type="text/css"/>        
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.0/chart.js" integrity="sha512-XcsV/45eM/syxTudkE8AoKK1OfxTrlFpOltc9NmHXh3HF+0ZA917G9iG6Fm7B6AzP+UeEzV8pLwnbRNPxdUpfA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
        <nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
            <a class="navbar-brand" href="index.jsp">Laboratorio</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a href="graficosExamenes.jsp" class="nav-link btn" >
                            Information
                        </a>                        
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Exams
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <button class="dropdown-item" data-toggle="modal" data-target="#exampleModal">Modal examen</button>
                            <button class="dropdown-item" data-toggle="modal" data-target="#exampleModal2">Modal insumo</button>
                            <a class="dropdown-item" href="registroExamen.jsp">Registro de examen</a>
                            <a class="dropdown-item" href="index.jsp">Listado de examen</a>
                            <a class="dropdown-item" href="index.jsp">Listado de examen</a>
                            <a class="dropdown-item" href="indexInsumo.jsp">Listado de insumo</a>
                            <div class="dropdown-divider">Graphic report of exams</div>                            
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link bi bi-arrow-left-square" href="../apiphp/index.jsp">Exit</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <form action="https://localhost/Php/add.php" method="POST" enctype="" >
                <div class="modal-body">

                    <div class="alert alert-danger" hidden="True" role="alert">
                        Toda la información debe ser llenada
                    </div>
                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputEmail4">Name:</label>
                            <input name="Name" type="text" class="form-control form-control-sm" id="inputEmail4" >
                        </div>
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputPassword4">Last Name:</label>
                            <input name="Last Name"  type="text" class="form-control form-control-sm" id="inputPassword4" >
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label style="color: #fff" for="inputEmail4">Date of birth:</label>
                            <input name="DateBirth"  type="text" class="form-control form-control-sm" id="inputEmail4">
                        </div>
                        <div class="form-group col-md-5">
                            <label style="color: #fff" for="inputPassword4">DNI:</label>
                            <input name="DNI" type="number" class="form-control form-control-sm" id="inputPassword4" >
                        </div>
                        <div class="form-group col-md-3">
                            <label style="color: #fff" for="inputPassword4">Gender:</label>
                            <select  class="form-control form-control-sm" name="Gender">
                                <option>Male</option>
                                <option>Female</option>
                                <option>Unspecified</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label style="color: #fff"  for="inputEmail4">Leucocitos:</label>
                            <input name="Leucocitos" type="number" class="form-control form-control-sm" id="inputEmail4" >
                        </div>
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputPassword4">Hemoglobina:</label>
                            <input name="Hemoglobina" type="number" class="form-control form-control-sm" id="inputPassword4" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputEmail4">Hematocrito:</label>
                            <input name="Hematocrito" type="number" class="form-control form-control-sm" id="inputEmail4" >
                        </div>
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputPassword4">Hematies:</label>
                            <input name="Hematies" type="number" class="form-control form-control-sm" id="inputPassword4" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label style="color: #fff" for="inputEmail4">V.C.M</label>
                            <input name="VCM" type="number" class="form-control form-control-sm" id="inputEmail4">
                        </div>
                        <div class="form-group col-md-3">
                            <label style="color: #fff" for="inputPassword4">H.C.M</label>
                            <input name="HCM" type="number" class="form-control form-control-sm" id="inputPassword4">
                        </div>
                        <div class="form-group col-md-3">
                            <label style="color: #fff" for="inputPassword4">C.H.C.M</label>
                            <input name="CHCM" type="number" class="form-control form-control-sm" id="inputPassword4">
                        </div>
                        <div class="form-group col-md-3">
                            <label style="color: #fff" for="inputPassword4">R.D.W.C.V</label>
                            <input name="RDWCV" type="number" class="form-control form-control-sm" id="inputPassword4">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputEmail4">Linfocitos:</label>
                            <input name="Linfocitos" type="number" class="form-control form-control-sm" id="inputEmail4">
                        </div>
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputPassword4">Monocitos:</label>
                            <input name="Monocitos" type="number" class="form-control form-control-sm" id="inputPassword4">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputEmail4">Eosinofilos:</label>
                            <input name="Eosinofilos" type="number" class="form-control form-control-sm" id="inputEmail4">
                        </div>
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputPassword4">Basofilos:</label>
                            <input name="Basofilos" type="number" class="form-control form-control-sm" id="inputPassword4">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputEmail4">V.P.M.</label>
                            <input name="VPM" type="number" class="form-control form-control-sm" id="inputEmail4">
                        </div>
                        <div class="form-group col-md-6">
                            <label style="color: #fff" for="inputPassword4">Plaquetas:</label>
                            <input name="Plaquetas" type="number" class="form-control form-control-sm" id="inputPassword4">
                        </div>
                    </div>

                    <div class="form-group">
                        <label style="color: #fff" for="inputAddress2">Medical diagnostics:</label>
                        <textarea name="Diagnosticos" class="form-control" >                                    
                        </textarea>                                
                    </div>                          

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-block "  data-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary btn-block " style="background: #FF9900; color: #fff" value="Save">
                </div>
            </form>
        </div>      
    </body>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="ajaxGraficos.js" type="text/javascript"></script>
    <script src="../recursos/js/bootstrap.min.js" type="text/javascript"></script>
</html>
