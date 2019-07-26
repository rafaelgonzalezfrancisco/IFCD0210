/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rafael González Francisco
 */
public class resultado extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     /*
        try (PrintWriter out = response.getWriter()) {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet resultado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet resultado at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
                String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String direccion = request.getParameter("direccion");
                String telefono = request.getParameter("telefono");
		
              
		if (nombre.equals("")) {
			nombre = "Caco";
		}
		if (apellido.equals("")) {
			apellido = "Malo";
		}
		if (direccion.equals("") ) {
			direccion = "Avda Los Mamporros a tutiplen s/n";
		}
		if (telefono.equals("")) {
			telefono = "620 55 44 33";
		}
		
                request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("direccion", direccion);
		request.setAttribute("telefono", telefono);
        
        
                request.getRequestDispatcher("respuesta.jsp").forward(request, response);
        
    }

  

}
