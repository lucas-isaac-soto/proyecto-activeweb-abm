LISTA DE TODOS LOS EMPLEADOS

<table>
    <thead>
        <th >id</th>
        <th >nombre</th>
        <th >apellido</th>
        <#if session.rolabm == true>
            <th >operaciones</th>
        </#if>
    </thead>

    <tbody>
        <#list listaUsuarios as usuario>
            <tr>
                <td >${usuario.id_usuario}</td>
                <td >${usuario.nombre}</td>
                <td >${usuario.apellido}</td>
                <#if session.rolabm == true>
                    <td>
                    <a href=""><button>VERMAS</button></a>
                    <a href=""><button>MODIFICAR</button></a>
                    <a href="${context_path}/usuario/borrarUsuario/${usuario.id_usuario}"><button>ELIMINAR</button></a>
                  </td>
                </#if>
            </tr>
        </#list>
    </tbody>
</table>

