<%-- 
    Document   : principal
    Created on : 08-ago-2021, 3:25:24
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../recursos/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Principal</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
   
    </head>
    <body class="container " onload="cargarDoctoresTba()" style="background: #343A40"  >
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Consultations Online-Administrator</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active bi bi-person-check-fill" href="doctoresCalificaciones.jsp"> Add doctores</a>
                    <a class="nav-item nav-link bi bi-archive-fill" href=""> Medical consultations</a>
                    <a class="nav-item nav-link bi bi-person-lines-fill" href=""> Add pacient</a>
                    <a class="nav-item nav-link bi bi-arrow-left-square" href="../apiphp/registroExamen.jsp"> Back</a>
                </div>
            </div>            
        </nav>
        
        <div class="row" style="margin-top: 10px">
            <div class="col-12">
                <div class="row">
                    <div class="col-12">                                            
                        <div class="alert alert-warning">
                            <p>“Those who think they have no time for healthy eating will sooner or later have to find time for illness.”</p>
                        </div>                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-4" style="padding: 20px">
                            <div class="form-group">
                                <label style="color: #fff" for="exampleFormControlInput1">First and Last names</label>
                                <input type="text" class="form-control " id="nombresDoc" placeholder="First and Last names">
                            </div>                         
                            <div class="form-group">
                                <label style="color: #fff" for="exampleFormControlSelect2">Doctor's specialty</label>
                                <select  class="form-control" id="espcialidad">
                                    <option>Familiar</option>
                                    <option>Otorrinolaringolo</option>
                                    <option>Cirujano</option>
                                    <option>Anestesiología</option>
                                    <option>Pediátrica</option>
                                    <option>Intensivos Pediátricos</option>
                                    <option>Imagenología</option>
                                    <option>Ortopedia y Traumatología</option>
                                    <option>Ortopedia y Traumatología</option>
                                    <option>Médica en Neonatología</option>
                                    <option>Neurocirugía</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label style="color: #fff" for="oferta">Attention hours</label>
                                <textarea name="oferta" class="form-control" id="oferta" rows="5"></textarea>
                            </div>
                            <div class="form-group">
                                <label style="color: #fff" for="contactos">Contact</label>
                                <textarea name="contactos" class="form-control" id="contactos" rows="5"></textarea>
                            </div>
                            <div class="form-group">
                                <button style="background: #FF9900" onclick="agregarDoctor()" class="btn btn-warning btn-block" >Add patient</button>
                            </div>                        
                    </div>
                    <div class="col-8">                                     
                        <div class="row">
                            <table class="table table-dark">
                                <thead class="thead-dark">
                                    <tr>                                        
                                        <th scope="col">First and Last names</th>
                                        <th scope="col">Doctor's specialty</th>
                                        <th scope="col">Attention hours</th>
                                        <th scope="col">Contact</th>
                                        <!--<th scope="col">Opciones</th>-->
                                    </tr>
                                </thead>
                                <tbody id="cuerpoTabla">
                                    
                                </tbody>
                            </table>                
                        </div>                      
                    </div>
                </div>
            </div>

        </div>
    </body>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="../recursos/js/bootstrap.js" type="text/javascript"></script>
    <script src="ajax.js" type="text/javascript"></script>
    
</html>
