package app.models;

import java.util.List;
import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("usuario")
public class Usuario extends Model{
    
    public static List<Usuario> obtenerTodosUsuario(){
        return Usuario.findAll();
    }
    
    
}
