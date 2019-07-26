<%-- 
    Document   : index
    Created on : 23-jul-2019, 8:47:42
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
    <body style="background-image:url(./img/John-Wick.jpg); background-size: cover; background-repeat: no-repeat;">
           
        <div class="container">
            <div class="row">
        
                <div class="col-md-4">
                    
                    
                    <div class="jumbotron mt-5">
                        <h1 class="display-4">Has matado a mi perro</h1>
                        <p class="lead">No sabes quien soy, si quieres saberlo dime tu nombre</p>
                        <hr class="my-4">
                       <form action="resultado" method="post">
                            <div class="form-group">
                              <label for="exampleFormControlInput1">Nombre</label>
                              <input name="nombre" type="text" class="form-control" id="exampleFormControlInput1" placeholder="nombre del inconsciente">
                            </div>
                            <div class="form-group">
                              <label for="exampleFormControlInput1">Apellido</label>
                              <input name="apellido" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Apellido del inconsciente">
                            </div>
                           <div class="form-group">
                              <label for="exampleFormControlInput1">Dirección</label>
                              <input name="direccion" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Dirección del inconsciente">
                            </div>
                           <div class="form-group">
                              <label for="exampleFormControlInput1">Teléfono</label>
                              <input name="telefono" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Teléfono del inconsciente">
                            </div>
                            <!--<div class="form-group">
                              <label for="exampleFormControlSelect1">Hostias a recibir</label>
                              <select class="form-control" id="exampleFormControlSelect1">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                              </select>
                            </div>-->
                           
                            <button type="submit" class="btn btn-primary mb-2">Enviar</button>
                        </form>
                   </div>
                </div>
                 
                <div class="col-md-4">
                  
                     
                    
                    
                </div>
        
        
           </div>
        </div>
             
             
            
           
            
        
       
    </body>
</html>
