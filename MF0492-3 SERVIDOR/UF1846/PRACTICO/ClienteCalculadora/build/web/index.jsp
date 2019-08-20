<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Calculadora</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>
        <h1 class="d-flex justify-content-center mt-5 text-danger display-4">Calculadora</h1>
        <div class="container-fluid">
         
            
            <div class="row d-flex justify-content-center">
                <div class="col-md-2 mt-3">
              <form action="suma.jsp" method="post">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="numero 1"  name="variable1">
                <input type="text" class="form-control" placeholder="numero 2" name="variable2">
                <div class="input-group-append" id="button-addon4">
                    <button class="btn btn-outline-secondary btn-primary text-white" type="submit">+</button>
                </div>
              </div>
           </form>
               </div>
           </div>
             <div class="row d-flex justify-content-center">
                 <div class="col-md-2 mt-3">
                  <form action="resta.jsp" method="post">
                    <div class="input-group">
                       <input type="text" class="form-control" placeholder="numero 1" name="variable1">
                       <input type="text" class="form-control" placeholder="numero 2" name="variable2">
                    <div class="input-group-append" id="button-addon4">
                        <button class="btn btn-outline-secondary btn-success text-white" type="submit">-</button>
                   </div>
                </div>
               </form>
             </div>
           </div>
            
             <div class="row d-flex justify-content-center">
                 <div class="col-md-2 mt-3">
                  <form action="multiplica.jsp" method="post">
                    <div class="input-group">
                       <input type="text" class="form-control" placeholder="numero 1" name="variable1">
                       <input type="text" class="form-control" placeholder="numero 2" name="variable2">
                    <div class="input-group-append" id="button-addon4">
                        <button class="btn btn-outline-secondary btn-warning text-white" type="submit">*</button>
                   </div>
                </div>
               </form>
             </div>
           </div>
            
             <div class="row d-flex justify-content-center">
                 <div class="col-md-2 mt-3">
                  <form action="divide.jsp" method="post">
                    <div class="input-group">
                       <input type="text" class="form-control" placeholder="numero 1" name="variable1">
                       <input type="text" class="form-control" placeholder="numero 2" name="variable2">
                    <div class="input-group-append" id="button-addon4">
                        <button class="btn btn-outline-secondary btn-info text-white" type="submit">/</button>
                   </div>
                </div>
               </form>
             </div>
           </div>
              
        
        </div>
    </body>
</html>
