package app.models;

import app.exceptions.UsuarioException;
import java.util.Date;
import java.util.LinkedList;
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
    
    public static void validarDatos(Map<String,String> datosUsuario,Integer idUsuario) throws UsuarioException{
        LinkedList<String> errores = new LinkedList<>();
        List<Usuario> usuarios;
        
        if(idUsuario != null)
            usuarios = Usuario.where("id_usuario <> ? ", idUsuario);
        else
            usuarios = Usuario.findAll();
        
        String regexNombreApellido = "^[A-ZÑa-zñ ]{3,}$";
        String regexAlias = "^[A-Za-z0-9_-]{3,}$";
        String regexEmail = "^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w{2,3})+$";
        String regexContrasenia = "^[A-Za-z0-9_-]{7,16}$";
        String regexCelular = "^[\\+]?[(]?[0-9]{3}[)]?[-\\s\\.]?[0-9]{3}[-\\s\\.]?[0-9]{3,6}$";
        
        if( datosUsuario.get("usuario-nombre") == null  || !datosUsuario.get("usuario-nombre").matches(regexNombreApellido))
            errores.add("Error en ingreso de Nombre, deben ser solo letreas y de 3 o mas, sin numeros ni caracteres especiales");
        
        if( datosUsuario.get("usuario-apellido") == null  || !datosUsuario.get("usuario-apellido").matches(regexNombreApellido))
            errores.add("Error en ingreso de Apellido, deben ser solo letreas y de 3 o mas, sin numeros ni caracteres especiales");
        
        if( datosUsuario.get("usuario-alias") == null  || !datosUsuario.get("usuario-alias").matches(regexAlias))
            errores.add("Error en ingreso de Alias, deben ser solo letreas y de 3 o mas, sin numeros ni caracteres especiales");
        
        if(datosUsuario.get("usuario-email1") == null  || !datosUsuario.get("usuario-email1").matches(regexEmail))
            errores.add("Error en ingreso de Email Principal, Debe tener un formato de email y no contener espacio");
        
        for(Usuario usuarioBuscando : usuarios){
            if(usuarioBuscando.get("alias").equals(datosUsuario.get("usuario-alias")))
                errores.add("Error en ingreso de Alias, usted elijio un alias que ya lo tiene otro usuario");
            
            if(usuarioBuscando.get("email_principal").equals(datosUsuario.get("usuario-email1")))
                errores.add("Error en ingreso de Email Principal, usted elijio un email que ya lo tiene otro usuario");
        }
        
        if(datosUsuario.get("usuario-email2") == null  || !datosUsuario.get("usuario-email2").matches(regexEmail))
            errores.add("Error en ingreso de Email Secundario, Debe tener un formato de email y no contener espacio");
        
        if(datosUsuario.get("usuario-email2").equals(datosUsuario.get("usuario-email1")))
            errores.add("Error en ingreso de Email Primario y Secundario, No deben ser iguales");
        
        if(datosUsuario.get("usuario-contrasenia") == null  || !datosUsuario.get("usuario-contrasenia").matches(regexContrasenia))
            errores.add("Error en ingreso de Contrasenia, Debe tener entre 7 y 16 caracteres y puede tener solo letras, numeros y - o _");
        
        if(datosUsuario.get("usuario-celular") == null  || !datosUsuario.get("usuario-celular").matches(regexCelular))
            errores.add("Error en ingreso de Celuar, Debe tener entre 9 y 12 numeros, sin letras y con formato de celular");
        
        if(datosUsuario.get("usuario-tipo") == null  || (!datosUsuario.get("usuario-tipo").equals("1") && !datosUsuario.get("usuario-tipo").equals("2")))
            errores.add("Error en ingreso de Tipo de usuario, Debe ser Sistema o Administracion");
        
        if(!errores.isEmpty())
            throw new UsuarioException(errores);
    }
    
    
    public static List<Usuario> obtenerTodosUsuario(){
        return Usuario.findAll().orderBy("fecha_alta").include(TipoUsuario.class);
    }
    
    public static void crearUsuario(Map<String,String> parametros){
        
        //validaciones
        Usuario nuevo = new Usuario();
        nuevo.set("nombre", parametros.get("usuario-nombre"));
        nuevo.set("apellido",parametros.get("usuario-apellido"));
        nuevo.set("alias", parametros.get("usuario-alias"));
        nuevo.set("contrasenia", parametros.get("usuario-contrasenia"));
        nuevo.set("email_principal",parametros.get("usuario-email1"));
        nuevo.set("email_secundario",parametros.get("usuario-email2"));
        nuevo.set("numero_celular",parametros.get("usuario-celular"));
        
        nuevo.set("id_tipo_usuario",Integer.valueOf(parametros.get("usuario-tipo")));
        
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
        
        modificado.set("nombre", parametros.get("usuario-nombre"));
        modificado.set("apellido",parametros.get("usuario-apellido"));
        modificado.set("alias", parametros.get("usuario-alias"));
        modificado.set("contrasenia", parametros.get("usuario-contrasenia"));
        modificado.set("email_principal",parametros.get("usuario-email1"));
        modificado.set("email_secundario",parametros.get("usuario-email2"));
        modificado.set("numero_celular",parametros.get("usuario-celular"));
        modificado.set("id_tipo_usuario",Integer.valueOf(parametros.get("usuario-tipo")));
        
        modificado.saveIt();
    }
}
