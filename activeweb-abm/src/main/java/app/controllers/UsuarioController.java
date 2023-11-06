package app.controllers;

import app.exceptions.UsuarioException;
import app.models.Usuario;
import java.util.List;
import java.util.Map;
import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.POST;
import org.javalite.common.JsonHelper;

public class UsuarioController extends AppController{
    
    public void listaUsuarios(){
        List<Usuario> usuarios = Usuario.obtenerTodosUsuario();
        
        view("listaUsuarios",usuarios);
    }
    public void buscarUsuario(){
        int usuarioId = Integer.valueOf(getId());
        Usuario buscado = Usuario.buscarUsuario(usuarioId);
        respond(JsonHelper.toJsonString(buscado)).contentType("application/json");
    }
    
    public void cargarNuevo(){    
    }
    
    @POST
    public void agregarUsuario(){   
        Map parametros = params1st();
        
        try {
            Usuario.validarDatos(parametros,null);
            Usuario.crearUsuario(parametros);
            redirect(UsuarioController.class, "listaUsuarios");
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
        }
                    
    }
    
    public void borrarUsuario(){
        Usuario.borrar(Integer.valueOf(getId()));
        
        redirect(UsuarioController.class, "listaUsuarios");
    }
    
    @POST
    public void modificarUsuario(){
        Map parametros = params1st();
        try {
            Usuario.validarDatos(parametros,Integer.valueOf(getId()));
            Usuario.modificar(parametros);
            redirect(UsuarioController.class, "listaUsuarios");
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
        }
    }
    
    public void cargarModificacion(){
        Integer idUsuario = Integer.valueOf(getId());
        Usuario buscado = Usuario.buscarUsuario(idUsuario);
        
        view("usuarioBuscado",buscado);
    }
    
    public void informacion(){
        Integer idUsuario = Integer.valueOf(getId());
        Usuario buscado = Usuario.buscarUsuario(idUsuario);
        view("usuarioBuscado",buscado);
    }
}
