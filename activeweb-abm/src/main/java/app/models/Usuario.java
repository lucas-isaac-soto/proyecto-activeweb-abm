package app.models;


import java.util.List;
import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.IdName;
import org.javalite.activejdbc.annotations.Table;

@Table("usuario")
@IdName("id_usuario")
public class Usuario extends Model{
    
    public static List<Usuario> obtenerTodosUsuario(){
        return Usuario.findAll();
    }
    
    public static void crearUsuario(String nombre,String apellido,String alias,String contrasenia,
            String emailPrincipal, String emailSecundario,String numeroCelular,int tipoUsuario, 
            String fechaAlta){
        //validaciones
        Usuario nuevo = new Usuario();
        nuevo.set("nombre", nombre);
        nuevo.set("apellido",apellido);
        nuevo.set("alias", alias);
        nuevo.set("contrasenia", contrasenia);
        nuevo.set("email_principal",emailPrincipal);
        nuevo.set("email_secundario",emailSecundario);
        nuevo.set("numero_celular",numeroCelular);
        nuevo.set("id_tipo_usuario",tipoUsuario);
        nuevo.setTimestamp("fecha_alta",fechaAlta);
        
        nuevo.saveIt();
    }
    
    public static Usuario buscarUsuario(int usuarioId){
        return Usuario.findById(usuarioId);
    }
    
    public static void borrar(int idUsuario){
        //validaciones
       Usuario.delete("id_usuario = ?" ,idUsuario);
    }
}
