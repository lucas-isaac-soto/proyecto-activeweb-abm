package app.controllers;

import app.exceptions.UsuarioException;
import app.models.TipoUsuario;
import app.models.Usuario;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.javalite.activeweb.AppController;
import org.javalite.activeweb.annotations.POST;
import org.javalite.common.JsonHelper;

public class UsuarioController extends AppController{
    
    //Accion de controlador muestra el listado de usuarios
    public void listar(){
        List<Usuario> usuarios = Usuario.obtenerTodos();
        view("listaUsuarios",usuarios);
    }
    
    //Accion que carga el formulario para agregar un nuevo usuario
    public void formularioNuevo(){
        List<TipoUsuario> tipos = TipoUsuario.obtenerTodosTipos();
        view("listaTipos",tipos);
    }
    
    /*
        Accion que realiza el alta en la base de datos del usuario nuevo
        Excepciones: 
         * Datos de Usuarios no cumplen las validaciones
    */
    @POST
    public void agregar(){   
        Map parametros = params1st();
        
        try {
            Usuario.validarDatos(parametros,null);
            Usuario.crear(parametros);
            redirect(UsuarioController.class, "listar");
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
        }
                    
    }
    
    /*
        Accion que borra un Usuario segun su ID
        Excepciones: 
            * Igreso de ID No Numerico
            * Usuario buscado para borrar no existe
    */
    public void borrar(){
        try {
            Integer idUsuario = Integer.valueOf(getId());
            Usuario buscado = Usuario.buscar(idUsuario);
            Usuario.borrar(Integer.valueOf(getId()));
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
            
        } catch (Exception e){
            LinkedList<String> error = new LinkedList<>();
            error.add("ERROR FATAL, INGRESO ALGO QUE NO ES UN ID USUARIO");
            
            view("errores",error);
            render("/system/datos-error").noLayout();
        }
        
        redirect(UsuarioController.class, "listar");
    }
    
    /*
    Acccion que carga la vista para modificar un usuario segun su ID
    Excepciones: 
        * Igreso de ID No Numerico
        * Usuario buscado para modificar no existe
    */
    public void formularioModificacion(){
        try{
            Integer idUsuario = Integer.valueOf(getId());
            Usuario buscado = Usuario.buscar(idUsuario);
            List<TipoUsuario> tipos = TipoUsuario.obtenerTodosTipos();

            view("usuarioBuscado",buscado);
            view("listaTipos",tipos);
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
            
        } catch (Exception e){
            LinkedList<String> error = new LinkedList<>();
            error.add("ERROR FATAL, INGRESO ALGO QUE NO ES UN ID USUARIO");
            
            view("errores",error);
            render("/system/datos-error").noLayout();
        }
    }
    
    /*Accion que realiza la modificacion al Usuario especificado segun su id
      Excepciones: 
        * Igreso de ID No Numerico
        * Usuario buscado para modificar no existe
        * Datos de Usuarios no cumplen las validaciones
    */
    @POST
    public void modificar(){
        Map parametros = params1st();
        try {
            Usuario.validarDatos(parametros,Integer.valueOf(getId()));
            
            Usuario.modificar(parametros);
            redirect(UsuarioController.class, "listar");
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
            
        } catch (Exception e){
            LinkedList<String> error = new LinkedList<>();
            error.add("ERROR FATAL, INGRESO ALGO QUE NO ES UN ID USUARIO");
            
            view("errores",error);
            render("/system/datos-error").noLayout();
        }
    }
    
    /*
        Accion que se utiliza para mostrar la informacion de un usuario especifico
        Excepciones: 
            * Igreso de ID No Numerico
            * Usuario buscado para modificar no existe
    */
    public void informacion(){
        try {
            Integer idUsuario = Integer.valueOf(getId());
            
            Usuario buscado = Usuario.buscar(idUsuario);
        
            List<TipoUsuario> tipos = TipoUsuario.obtenerTodosTipos();

            view("usuarioBuscado",buscado);
            view("listaTipos",tipos);
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
        } catch (Exception e){
            LinkedList<String> error = new LinkedList<>();
            error.add("ERROR FATAL, INGRESO ALGO QUE NO ES UN ID USUARIO");
            
            view("errores",error);
            render("/system/datos-error").noLayout();
        }
    }
    
    
    
    
    /*
        Accion que se implenta para consultas javascrip y no funciono
        Excepciones: 
            * Igreso de ID No Numerico
            * Usuario buscado para modificar no existe
    */
    public void buscarUsuario(){
        try {
            int usuarioId = Integer.valueOf(getId());
            Usuario buscado = Usuario.buscar(usuarioId);
            respond(JsonHelper.toJsonString(buscado)).contentType("application/json");
            
        } catch (UsuarioException e) {
            view("errores",e.getErrores());
            render("/system/datos-error").noLayout();
        } catch (Exception e){
            LinkedList<String> error = new LinkedList<>();
            error.add("ERROR FATAL, INGRESO ALGO QUE NO ES UN ID USUARIO");
            
            view("errores",error);
            render("/system/datos-error").noLayout();
        }
    }
    
}
