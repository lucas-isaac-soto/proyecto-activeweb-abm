<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <h2 class="text-center">Lista de Usuarios</h2>
        </div>
        <div class="row">
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
                            <td style="display:none;">${usuario.id_tipo_usuario}</td>
                            <td >${usuario.fecha_alta}</td>
                            <#if session.rolabm == true>
                                <td>
                                    <a class="btn btn-warning" href="#">
                                        <i class="bi bi-info-square"></i>
                                    </a>
                                    <a class="btn btn-primary" href="${context_path}/usuario/cargarModificacion/${usuario.id_usuario}">
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
                        <#if session.rolabm == true>
                            <#list 1..7 as number>
                                <td></td>
                            </#list>
                        <#else>
                            <#list 1..6 as number>
                                <td></td>
                            </#list>
                        </#if>

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

    <!-- Modal -->
    <div class="modal fade" id="ModalBorrarUsuario" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                        Atencion Borrando Usuario
                    </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table class="table table-danger">
                        <tbody>
                            <tr> <td class="modal-id"></td> </tr>
                            <tr> <td class="modal-nombre"></td> </tr>
                            <tr> <td class="modal-apellido"></td> </tr>
                            <tr> <td class="modal-alias"></td> </tr>
                            <tr> <td class="modal-contrasenia"></td> </tr>
                            <tr> <td class="modal-email-primario"></td> </tr>
                            <tr> <td class="modal-email-secundario"></td> </tr>
                            <tr> <td class="modal-celular"></td></tr>
                            <tr> <td class="modal-tipo-usuario"></td></tr>
                            <tr> <td class="modal-fecha-alta"></td></tr>
                        </tbody>

                    <input id="acepto-borrar" class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        Acepto eliminar al usuario.
                    </label>

                    <br>
                    Presiones Borrar Usuario para eliminarlo completamente o Cancelar volver.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                        Cancelar
                    </button>

                    <!--NO OLVIDAR PONER LA URL AL CONTROLADOR QUE CIERRA LA SESION-->
                    <p id="url-borrar" style="display:none;">${context_path}/usuario/borrarUsuario/</p>
                    
                    <a id="boton-borrar" href="${context_path}/usuario/borrarUsuario/" class="btn btn-danger disabled">
                        Borrar Usuario
                    </a>
                    Usted esta a punto de borrar al siguiente usuario: <br>
                </div>
            </div>
        </div>
    </div>


    <script src="${context_path}/js/funciones_lista.js"></script>
</body>

</html>
