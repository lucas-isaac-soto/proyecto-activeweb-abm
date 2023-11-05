package app.controllers;

import app.models.Usuario;
import java.util.HashMap;
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
        String nombre = getHttpServletRequest().getParameter("usuario-nombre");
        String apellido = param("usuario-apellido");
        String alias = param("usuario-alias");
        String contrasenia = param("usuario-contrasenia");
        String emailPrincipal = param("usuario-email1");
        String emailSecundario = param("usuario-email2");
        String celular = param("usuario-celular");
        String tipoUsuario = param("usuario-tipo");
        
        Usuario.crearUsuario(nombre, apellido, alias, contrasenia, emailPrincipal, emailSecundario, celular, tipoUsuario);
        
        redirect(UsuarioController.class, "listaUsuarios");
    }
    
    public void borrarUsuario(){
        Usuario.borrar(Integer.valueOf(getId()));
        
        redirect(UsuarioController.class, "listaUsuarios");
    }
    
    @POST
    public void modificarUsuario(){
        Map<String,String> valores = new HashMap<>();
        
        String idUsuario = getId();
        String nombre = getHttpServletRequest().getParameter("usuario-nombre");
        String apellido = param("usuario-apellido");
        String alias = param("usuario-alias");
        String contrasenia = param("usuario-contrasenia");
        String emailPrincipal = param("usuario-email1");
        String emailSecundario = param("usuario-email2");
        String celular = param("usuario-celular");
        String tipoUsuario = param("usuario-tipo");
            
        
        valores.put("id", idUsuario);
        valores.put("nombre", nombre);
        valores.put("apellido", apellido);
        valores.put("alias", alias);
        valores.put("contrasenia", contrasenia);
        valores.put("email1", emailPrincipal);
        valores.put("email2", emailSecundario);
        valores.put("celular", celular);
        valores.put("usuario-tipo", tipoUsuario);
        
        Usuario.modificar(valores);
        
        redirect(UsuarioController.class, "listaUsuarios");
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
