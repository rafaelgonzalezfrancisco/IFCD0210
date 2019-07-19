
public class DatosUsuario {
    public DatosUsuario(){
    	
    }
    String usuario1="";
    String pass1="";
    
    public int ProbarPass() {
    	usuario1 = login.textField.getText();
    	pass1 = login.passwordField.getText();
    	if(usuario1.equals("Coco") && pass1.equals("Liso")) {
    		return 1;
    	}
    	else {
    		return 0;
    	}
    	
    	
		
    }
}
