package app.models;

import java.util.List;
import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.IdName;
import org.javalite.activejdbc.annotations.Table;

@Table("tipo_usuario")
@IdName("id_tipo")

public class TipoUsuario extends Model{

    public static List<TipoUsuario> obtenerTodosTipos() {
        return TipoUsuario.findAll().orderBy("id_tipo");
    }
    
}
