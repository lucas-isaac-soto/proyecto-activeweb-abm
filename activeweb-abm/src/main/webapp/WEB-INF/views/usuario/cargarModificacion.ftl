<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        body {
            background-color: #718355;
        }

        /* Chrome, Safari, Edge, Opera */
        #usuario-id::-webkit-outer-spin-button,
        #usuario-id::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        #usuario-id[type=number] {
            -moz-appearance: textfield;
        }
    </style>
</head>

<body>
    <div class="container modificar-cuerpo mt-5">
        <div class="row">
            <h2 class="text-center">Modificacion del Usuario ID</h2>
        </div>
        <div class="row">
            <form action="${context_path}/usuario/modificarUsuario/${usuarioBuscado.id_usuario}" method="post">
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-id" class="form-label fs-4">id</label></div>
                    <div class="col-1">
                        <input type="number" class="form-control col-auto" name="usuario-id" id="usuario-id" disabled required value="${usuarioBuscado.id_usuario}">
                    </div>

                </div>
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-nombre" class="form-label fs-4">Nombre</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-nombre" id="usuario-nombre" required value="${usuarioBuscado.nombre}">
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
                    <div class="col-3 text-center"><label for="usuario-apellido"
                            class="form-label fs-4">Apellido</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-apellido" id="usuario-apellido" required value="${usuarioBuscado.apellido}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-alias" class="form-label fs-4">Alias</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-alias" id="usuario-alias" required value="${usuarioBuscado.alias}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-contrasenia"
                            class="form-label fs-4">Contrasenia</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-contrasenia" id="usuario-contrasenia" required value="${usuarioBuscado.contrasenia}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-email1" class="form-label fs-4">Email
                            Principal</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-email1" id="usuario-email1" required value="${usuarioBuscado.email_principal}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-email2" class="form-label fs-4">Email
                            Secundario</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-email2" id="usuario-email2" required value="${usuarioBuscado.email_secundario}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-celular" class="form-label fs-4">Celular</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-celular" id="usuario-celular" required value="${usuarioBuscado.numero_celular}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-tipo" class="form-label fs-4">Tipo
                            Usuario</label>
                    </div>
                    <div class="col-3">
                        <select class="form-select" name="usuario-tipo" id="usuario-tipo" required>
                            <option value="1">Sistema</option>
                            <option value="2">Administrador</option>
                        </select>
                    </div>
                </div>


                <div class="row">
                    <div class="col text-end mb-3">
                        <a href="${context_path}/usuario/listaUsuarios" class="btn btn-secondary">Volver</a>
                        <input type="submit" class="btn btn-success" value="Modificar">
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>

</html>