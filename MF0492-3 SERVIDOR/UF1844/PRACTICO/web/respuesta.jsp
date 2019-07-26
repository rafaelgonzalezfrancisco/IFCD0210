<%-- 
     Document   : respuesta
    Created on : 25-jul-2019, 11:26:47
    Author     : Rafael González Francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url(./img/John-Wick2.jpg); background-size: cover; background-repeat: no-repeat;">
           
        <div class="container">
            <div class="row">
        
                <div class="col-md-4 offset-md-8">
                    
                    
                    <div class="jumbotron mt-5">
                        <hr class="my-1">
                        <h1 class="text-info">Ya sé quien eres, donde vives y te puedo llamar</h1>
                        <p class="lead">No tienes escapatoria Sr:</p>
                        <hr class="my-2">
                        <h3 class=""><%= request.getAttribute("nombre")%> <%= request.getAttribute("apellido")%></h3>
                       <!-- <h3 class=""><%= request.getAttribute("apellido")%></h3>-->
                        <h3 class=""><%= request.getAttribute("direccion")%></h3>
                        <h3 class=""><%= request.getAttribute("telefono")%></h3>
                   </div>
                </div>
                 
                <div class="col-md-4">
                  
                     
                    
                    
                </div>
        
        
           </div>
        </div>
             
             
            
           
            
        
       
    </body>
</html>

