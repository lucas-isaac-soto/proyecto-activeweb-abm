LISTA DE TODOS LOS EMPLEADOS

<table>
    <thead>
        <th >id</th>
        <th >nombre</th>
        <th >apellido</th>
    </thead>

    <tbody>
        <#list listaUsuarios as usuario>
            <tr>
                <td >${usuario.id_usuario}</td>
                <td >${usuario.nombre}</td>
                <td >${usuario.apellido}</td>
            </tr>
        </#list>
    </tbody>
</table>

