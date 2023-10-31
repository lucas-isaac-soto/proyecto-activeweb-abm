package app.models;


import java.util.List;
import java.util.Map;
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
    
    public static void modificar(Map<String,String> parametros) {
        Usuario modificado = Usuario.findById(Integer.valueOf( parametros.get("id")));
        
        modificado.set("nombre", parametros.get("nombre")).saveIt();
        modificado.set("apellido",parametros.get("apellido")).saveIt();
        modificado.set("alias", parametros.get("alias")).saveIt();
        modificado.set("contrasenia", parametros.get("contrasenia")).saveIt();
        modificado.set("email_principal",parametros.get("emailPrincipal")).saveIt();
        modificado.set("email_secundario",parametros.get("emailSecundario")).saveIt();
        modificado.set("numero_celular",parametros.get("celular")).saveIt();
        modificado.set("id_tipo_usuario",Integer.valueOf(parametros.get("tipoUsuario"))).saveIt();
    }
}
