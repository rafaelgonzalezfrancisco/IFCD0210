<%-- 
    Document   : suma
    Created on : 20-ago-2019, 11:27:57
    Author     : Alumnos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suma</title>
    </head>
    <body>
       
    <%-- start web service invocation --%><hr/>
    <%
    try {
	micalculadora.Calculadora_Service service = new micalculadora.Calculadora_Service();
	micalculadora.Calculadora port = service.getCalculadoraPort();
	 // TODO initialize WS operation arguments here
	int num1 = Integer.parseInt(request.getParameter("variable1"));
	int num2 = Integer.parseInt(request.getParameter("variable2"));
	// TODO process result here
	java.lang.Integer result = port.suma(num1, num2);
	out.println("Resultado de la suma = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
