/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app.exceptions;

import java.util.LinkedList;

/**
 *
 * @author uniluk
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
