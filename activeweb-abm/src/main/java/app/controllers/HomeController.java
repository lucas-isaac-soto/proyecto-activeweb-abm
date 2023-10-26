package app.controllers;

import app.models.Usuario;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.javalite.activeweb.AppController;

public class HomeController extends AppController{
    
    public void index(){
        
        String usuario = getHttpServletRequest().getRemoteUser();
        Boolean ver = getHttpServletRequest().isUserInRole("ver");
        Boolean abm = getHttpServletRequest().isUserInRole("abm");
        
        session("rolver",ver);
        session("rolabm",abm);
        session("usuario", usuario);
    }
    
    public void cerrarSesion(){
        session().invalidate();
        redirect(HomeController.class, "index");
    }
    
}