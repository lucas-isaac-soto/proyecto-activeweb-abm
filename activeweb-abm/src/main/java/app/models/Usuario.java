package app.models;

import java.util.Date;
import java.util.List;
import java.util.Map;
import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.BelongsTo;
import org.javalite.activejdbc.annotations.IdName;
import org.javalite.activejdbc.annotations.Table;

@Table("usuario")
@IdName("id_usuario")
@BelongsTo(foreignKeyName = "id_tipo_usuario", parent = TipoUsuario.class)
public class Usuario extends Model{
    
    public static List<Usuario> obtenerTodosUsuario(){
        return Usuario.findAll().orderBy("fecha_alta").include(TipoUsuario.class);
    }
    
    public static void crearUsuario(String nombre,String apellido,String alias,String contrasenia,
            String emailPrincipal, String emailSecundario,String numeroCelular,String tipoUsuario){
        
        //validaciones
        Usuario nuevo = new Usuario();
        nuevo.set("nombre", nombre);
        nuevo.set("apellido",apellido);
        nuevo.set("alias", alias);
        nuevo.set("contrasenia", contrasenia);
        nuevo.set("email_principal",emailPrincipal);
        nuevo.set("email_secundario",emailSecundario);
        nuevo.set("numero_celular",numeroCelular);
        nuevo.set("id_tipo_usuario",Integer.valueOf(tipoUsuario));
        
        Date fecha = new Date();
        nuevo.setTimestamp("fecha_alta",fecha.getTime());
        
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
        
        modificado.set("nombre", parametros.get("nombre"));
        modificado.set("apellido",parametros.get("apellido"));
        modificado.set("alias", parametros.get("alias"));
        modificado.set("contrasenia", parametros.get("contrasenia"));
        modificado.set("email_principal",parametros.get("email1"));
        modificado.set("email_secundario",parametros.get("email2"));
        modificado.set("numero_celular",parametros.get("celular"));
        modificado.set("id_tipo_usuario",Integer.valueOf(parametros.get("usuario-tipo")));
        
        modificado.saveIt();
    }
}
