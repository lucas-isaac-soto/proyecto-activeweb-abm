<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container modificar-cuerpo mt-5">
        <div class="row">
            <h2 class="text-center">Informacion del Usuario ID</h2>
        </div>
        <div class="row">
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-id" class="form-label fs-4">id</label>
                </div>
                <div class="col-1">
                    <input type="number" class="form-control col-auto" name="usuario-id" id="usuario-id" disabled required value="${usuarioBuscado.id_usuario}">
                </div>

            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-nombre" class="form-label fs-4">Nombre</label>
                </div>
                <div class="col-3">
                    <input type="text" class="form-control col-auto" id="usuario-nombre" value="${usuarioBuscado.nombre}" disabled>
                </div>
                <div class="col fs-5">
                    <div class="valid-feedback">
                        Valido
                    </div>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                        Ingrese un Nombre Valido porfavor
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-apellido" class="form-label fs-4">Apellido</label>
                </div>
                <div class="col-3">
                    <input type="text" class="form-control col-auto" id="usuario-apellido" value="${usuarioBuscado.apellido}" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-alias" class="form-label fs-4">Alias</label>
                </div>
                <div class="col-3">
                    <input type="text" class="form-control col-auto" id="usuario-alias" value="${usuarioBuscado.alias}" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-contrasenia"
                        class="form-label fs-4">Contrasenia</label>
                </div>
                <div class="col-3">
                    <input type="text" class="form-control col-auto" id="usuario-contrasenia" value="${usuarioBuscado.contrasenia}" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-email1" class="form-label fs-4">Email
                        Principal</label>
                </div>
                <div class="col-3">
                    <input type="text" class="form-control col-auto" id="usuario-email1" value="${usuarioBuscado.email_principal}" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-email2" class="form-label fs-4">Email
                        Secundario</label>
                </div>
                <div class="col-3">
                    <input type="text" class="form-control col-auto" id="usuario-email2" value="${usuarioBuscado.email_secundario}" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-celular" class="form-label fs-4">Celular</label>
                </div>
                <div class="col-3">
                    <input type="text" class="form-control col-auto" id="usuario-celular" value="${usuarioBuscado.numero_celular}" disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-3 text-center"><label for="usuario-tipo" class="form-label fs-4">Tipo
                        Usuario</label>
                </div>
                <div class="col-3">
                    <select class="form-select" value="${usuarioBuscado.id_tipo_usuario}" disabled>
                        <option value="1" <#if "1" == "${usuarioBuscado.id_tipo_usuario}"> selected </#if> >Sistema</option>
                        <option value="2" <#if "2" == "${usuarioBuscado.id_tipo_usuario}"> selected </#if> >Administrador</option>
                    </select>
                </div>
            </div>


            <div class="row">
                <div class="col text-end mb-3">
                    <a href="${context_path}/usuario/listaUsuarios" class="btn btn-secondary">Volver</a>
                    <a href="${context_path}/usuario/cargarModificacion/${usuarioBuscado.id_usuario}" class="btn btn-warning">Modificar</a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
