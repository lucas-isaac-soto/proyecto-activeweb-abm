package app.controllers;

import app.models.Usuario;
import java.util.List;
import org.javalite.activeweb.AppController;
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
    
    public void agregarUsuario(){
        String nombre = "nuevo";
        String apellido = "nuevo";
        String alias = "nuevoAlias";
        String contrasenia = "123456789";
        String emailPrincipal = "123123123123";
        String emailSecundario = "123123123123";        
        String numeroCelular = "1111111111";        
        int tipoUsuario = 2;
        String fechaAlta = "2023-05-05 01:00:00";
        Usuario.crearUsuario(nombre, apellido, alias, contrasenia, emailPrincipal, emailSecundario, numeroCelular, tipoUsuario, fechaAlta);
        
        redirect(UsuarioController.class, "listaUsuarios");
    }
    
    public void borrarUsuario(){
        Usuario.borrar(Integer.valueOf(getId()));
        
        redirect(UsuarioController.class, "listaUsuarios");
    }
    
    public void modificarUsuario(){
        Usuario.borrar(Integer.valueOf(getId()));
        redirect(UsuarioController.class, "listaUsuarios");
    }
}
