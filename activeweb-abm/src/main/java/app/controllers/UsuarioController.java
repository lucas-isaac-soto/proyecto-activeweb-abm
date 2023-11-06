package app.controllers;

import app.exceptions.UsuarioException;
import app.models.TipoUsuario;
import app.models.Usuario;
import java.util.List;
import java.util.Map;
import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.POST;
import org.javalite.common.JsonHelper;

public class UsuarioController extends AppController{
    
    public void listar(){
        List<Usuario> usuarios = Usuario.obtenerTodosUsuario();
        view("listaUsuarios",usuarios);
    }
    
    
    public void buscarUsuario(){
        int usuarioId = Integer.valueOf(getId());
        Usuario buscado = Usuario.buscarUsuario(usuarioId);
        respond(JsonHelper.toJsonString(buscado)).contentType("application/json");
    }
    
    public void formularioNuevo(){
        List<TipoUsuario> tipos = TipoUsuario.obtenerTodosTipos();
        view("listaTipos",tipos);
    }
    
    @POST
    public void agregarUsuario(){   
        Map parametros = params1st();
        
        try {
            Usuario.validarDatos(parametros,null);
            Usuario.crearUsuario(parametros);
            redirect(UsuarioController.class, "listar");
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
        }
                    
    }
    
    public void borrarUsuario(){
        Usuario.borrar(Integer.valueOf(getId()));
        
        redirect(UsuarioController.class, "listar");
    }
    
    @POST
    public void modificarUsuario(){
        Map parametros = params1st();
        try {
            Usuario.validarDatos(parametros,Integer.valueOf(getId()));
            Usuario.modificar(parametros);
            redirect(UsuarioController.class, "listar");
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
        }
    }
    
    public void formularioModificacion(){
        Integer idUsuario = Integer.valueOf(getId());
        
        Usuario buscado = Usuario.buscarUsuario(idUsuario);
        List<TipoUsuario> tipos = TipoUsuario.obtenerTodosTipos();
        
        view("usuarioBuscado",buscado);
        view("listaTipos",tipos);
    }
    
    public void informacion(){
        Integer idUsuario = Integer.valueOf(getId());
        Usuario buscado = Usuario.buscarUsuario(idUsuario);
        List<TipoUsuario> tipos = TipoUsuario.obtenerTodosTipos();
        
        view("usuarioBuscado",buscado);
        view("listaTipos",tipos);
    }
    
    
}
