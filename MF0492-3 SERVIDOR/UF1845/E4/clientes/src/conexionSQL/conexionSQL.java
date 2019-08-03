/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexionSQL;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author USUARIO PRINCIPAL
 */
public class conexionSQL {
    
    
    Connection conectar=null;
    public Connection conexion () {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conectar=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/golosinas", "root", "");
            
            //JOptionPane.showMessageDialog(null,"Conexion Exitosa");
            
                     
            
        } catch (ClassNotFoundException | SQLException e) {
           JOptionPane.showMessageDialog(null,"Error Conexion" + e.getMessage()); 
        }
        return  conectar;
        
    }
    
      
    
}
