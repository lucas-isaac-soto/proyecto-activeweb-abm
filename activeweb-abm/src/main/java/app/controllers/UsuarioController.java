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
    
    @POST
    public void modificarUsuario(){
        //Map<String,String> valores = new HashMap<>();
        
//        String idUsuario = getId();
//        String nombre = getHttpServletRequest().getParameter("usuario-nombre");
//        String apellido = getHttpServletRequest().getParameter("usuario-apellido");
//        String alias = getHttpServletRequest().getParameter("usuario-alias");
//        String contrasenia = getHttpServletRequest().getParameter("usuario-contrasenia");
//        String emailPrincipal = getHttpServletRequest().getParameter("usuario-email1");
//        String emailSecundario = getHttpServletRequest().getParameter("usuario-email2");
//        String celular = getHttpServletRequest().getParameter("usuario-celular");
//        String tipoUsuario = getHttpServletRequest().getParameter("usuario-tipo");
//        
//        valores.put("id", idUsuario);
//        valores.put("nombre", nombre);
//        valores.put("apellido", apellido);
//        valores.put("alias", alias);
//        valores.put("contrasenia", contrasenia);
//        valores.put("email1", emailPrincipal);
//        valores.put("email2", emailSecundario);
//        valores.put("celular", celular);
//        valores.put("tipoUsuario", tipoUsuario);
        
        //Usuario.modificar(valores);
        
    }
    
    public void cargarModificacion(){
        Integer idUsuario = Integer.valueOf(getId());
        Usuario buscado = Usuario.buscarUsuario(idUsuario);
        
        view("usuarioBuscado",buscado);
    }
    
    
}
