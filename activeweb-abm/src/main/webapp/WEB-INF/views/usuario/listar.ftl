<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista Usuarios</title>
</head>

<body>
    <div class="container mt-5">
        
        <!--Titulo y boton Nuevo Usuario-->
        <div class="row">
            <h2 class="text-center">Lista de Usuarios</h2>
            <a class="btn btn-primary" href="${context_path}/usuario/formularioNuevo">Nuevo Usuario</a>
        </div>

        
        <div class="row">

            <!--Tabla que contiene todos los usuarios-->
            <table class="table table-striped table-hover tabla-lista">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>alias</th>
                        <th>E-Mail</th>
                        <th>Celular</th>
                        <th>Fecha Alta</th>      
                  
                        <#if session.rolabm == true>
                            <th>Operaciones</th>
                        </#if>
                    </tr>
                </thead>
                    
                <tbody>
                    <!--Bucle de usuarios los cuales muestra sos datos en cada celda de la tabla-->
                    <#list listaUsuarios as usuario>
                        <tr>
                            <td >${usuario.id_usuario}</td>
                            <td >${usuario.nombre}</td>
                            <td >${usuario.apellido}</td>
                            <td >${usuario.alias}</td>
                            <td style="display:none;">${usuario.contrasenia}</td>
                            <td >${usuario.email_principal}</td>
                            <td style="display:none;">${usuario.email_secundario}</td>
                            <td >${usuario.numero_celular}</td>
                            <td style="display:none;">${usuario.tipo_usuario.nombre_tipo}</td>
                            <td >${usuario.fecha_alta}</td>

                            <!--En caso que tenga ROL ABM vamos a mostrar botones extras-->
                            <#if session.rolabm == true>
                                <td>
                                    <a class="btn btn-warning" href="${context_path}/usuario/informacion/${usuario.id_usuario}">
                                        <i class="bi bi-info-square"></i>
                                    </a>
                                    
                                    <a class="btn btn-primary" href="${context_path}/usuario/formularioModificacion/${usuario.id_usuario}">
                                        <i class="bi bi-pen"></i>
                                    </a>
                                    
                                    <button type="button" class="btn btn-danger borrar-usuario" data-bs-toggle="modal"
                                        data-bs-target="#ModalBorrarUsuario">
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </td>
                            
                            </#if>
                        </tr>
                    </#list>
                </tbody>
                
                <tfoot>
                    <tr>
                        <!--Agrego celdas segun tenga el ROL abm o no para que los link del footer queden bien alineados-->
                        <#if session.rolabm == true>
                            <#list 1..7 as number>
                                <td></td>
                            </#list>
                        <#else>
                            <#list 1..6 as number>
                                <td></td>
                            </#list>
                        </#if>
                        
                        <!--Pequenio nav que no realizan funcionalidad, pero podria-->
                        <td>
                            <nav class="paginacion" aria-label="Page navigation example">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </td>

                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
    
    <!--Fragmento Modal incrustado-->
    <#include "_modal-borrar.ftl" >

    <script src="${context_path}/js/funciones_lista.js"></script>
</body>

</html>
