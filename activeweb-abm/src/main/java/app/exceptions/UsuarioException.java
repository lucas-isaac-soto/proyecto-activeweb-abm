package app.exceptions;

import java.util.LinkedList;

/**
 * Excepcion de Usuarios al validar los datos, en ella se tiene una lista de cadenas que representa cada
 * validacio fallo
 */
public class UsuarioException extends Exception{
    private LinkedList<String> errores = new LinkedList<>();
    
    public UsuarioException(LinkedList<String> errores){
        this.errores = errores;
    }
    
    public LinkedList<String> getErrores() {
        return errores;
    }

    public void setErrores(LinkedList<String> errores) {
        this.errores = errores;
    }
    
}
