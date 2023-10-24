package app.controllers;

import app.models.Usuario;
import org.javalite.activeweb.AppController;

public class ProbarormController extends AppController{
    
    public void index(){
        view("listaUsuarios",Usuario.obtenerTodosUsuario());
    }
    
    public void nuevoUsuario(){
    }
}