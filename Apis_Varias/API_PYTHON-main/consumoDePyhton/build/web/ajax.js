function consultaAjaxUsuario() {
    var user = document.getElementById("nameUsuario").value;
    var contra = document.getElementById("contraUsuario").value;
    var url = "http://localhost:5000/users/" + user + "/" + contra + "";
    console.log(url);
    $.ajax({
        method: "GET",
        url: url,
        success: function (data) {
            datos = data;
            console.log(data);
            location.href = "doctoresCalificaciones.jsp";
        },
        error: function (data) {
            console.log(data.status);
        }
    });
}
var datosLista=[];
function cargarDoctores()
{
    
var url = "http://localhost:5000/doctores";
    console.log(url);
    $.ajax({
        method: "GET",
        url: url,
        success: function (data) {
            datosLista = data;
            console.log(datosLista);
            colocarCards();
        },
        error: function (data) {
            console.log(data.status);
        }
    });
}
function colocarCards()
{
     var html="";
   for(var i=0; i<datosLista.length; i++){
  html=html+"<div class=\"col-sm-6\">"+
               "<div class=\"card\">"+
                    "<div class=\"card-body\">"+
                        "<h5 class=\"card-title\">"+datosLista[i].Nombre+"</h5>"+
                        "<p class=\"card-text\">"+
                        "Contactos: "+datosLista[i].contacto+"<br/>"+
                        "Especialidad: "+datosLista[i].Especialidad+"<br/>"+
                        "Ofrece: "+datosLista[i].Ofrece+"</p>"+
                        "<a href=\"#\" class=\"btn btn-primary\">Hacer una cita</a>"+
                    "</div>"+
                "</div>"+
            "</div>";
   }
   document.getElementById("contenedorDoctores").innerHTML=html;
}

function agregarDoctor()
{
    var idDoctor, Nombre,contacto,Ofrece, Especialidad;
    idDoctor=getRandomArbitrary(10,10000);
    Nombre=document.getElementById("nombresDoc").value;
    contacto=document.getElementById("contactos").value;
    Ofrece=document.getElementById("oferta").value;
    Especialidad=document.getElementById("espcialidad").value;
   
    var url="http://localhost:5000/doctores";
    var dat="idDoctor="+idDoctor+"&Nombre="+Nombre+"&contacto="+contacto+"&Ofrece="+Ofrece+"&Especialidad="+Especialidad+"";
    
     $.ajax({
        method: "POST",
        url: url,         
        data:dat,
        success: function (data) {
            datosLista = data;
            console.log(datosLista);
            colocarLista(data);
        },
        error: function (data) {
            console.log(data.status);
        }
    });
}
function colocarLista(jsonDoctores)
{
    var html="";
    for(var i=0; i<jsonDoctores.length; i++){
    html=html+"<tr>"+                 
                 "<td>"+(jsonDoctores[i].Nombre).toString().trim()+"</td>"+
                 "<td>"+(jsonDoctores[i].Especialidad).toString().trim()+"</td>"+
                 "<td>"+(jsonDoctores[i].Ofrece).toString().trim()+"</td>"+
                 "<td>"+(jsonDoctores[i].contacto).toString().trim()+"</td>"+
//                 "<td><button type=\"button\" class=\"btn btn-outline-danger btn-sm\">Eliminar</button></td>"+
             "</tr>";
     }
     document.getElementById("cuerpoTabla").innerHTML=html;
}
function getRandomArbitrary(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}
function cargarDoctoresTba()
{
    
var url = "http://localhost:5000/doctores";
    console.log(url);
    $.ajax({
        method: "GET",
        url: url,
        success: function (data) {
            datosLista = data;            
            colocarLista(data);
        },
        error: function (data) {
            console.log(data.status);
        }
    });
}
