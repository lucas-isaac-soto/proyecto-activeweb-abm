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
            <h2 class="text-center">Nuevo Usuario</h2>
        </div>


        <div class="row">
            <form action="${context_path}/usuario/agregarUsuario" method="post">
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-nombre" class="form-label fs-4">Nombre</label>
                    </div>

                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-nombre" id="usuario-nombre"  
                        title="Un nombre debe tener minimo 3 letras y no debe tener numeros" required>
                        
                        <div class="valid-feedback fs-5">
                            Nombre Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Nombre Incorrecto, no debe tener numeros ni caracteres especiales y debe tener 3 o mas
                            letras
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-apellido"
                            class="form-label fs-4">Apellido</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-apellido" id="usuario-apellido"  
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>

                        <div class="valid-feedback fs-5">
                            Apellido Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Apellido Incorrecto, no debe tener numeros ni caracteres especiales y debe tener 3 o mas
                            letras
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-alias" class="form-label fs-4">Alias</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-alias" id="usuario-alias" 
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>
                        <div class="valid-feedback fs-5">
                            Alias Correcto
                        </div>
                        <div class="invalid-feedback fs-5">
                            Alias Incorrecto, debe tener 3 o mas caracteres y solo usar numeros, letras y ( - o _ ) y no
                            usar espacios
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-contrasenia"
                            class="form-label fs-4">Contrasenia</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-contrasenia" id="usuario-contrasenia" required 
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>
                        <div class="valid-feedback fs-5">
                            Contrasenia Correcta
                        </div>
                        <div class="invalid-feedback fs-5">
                            Contrasenia Incorrecta, debe tener entre 7 y 16 caracteres y solo usar numeros, letras y ( -
                            o _ ) y no usar espacios
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-email1" class="form-label fs-4">Email
                            Principal</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-email1" id="usuario-email1"  
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>
                        <div class="valid-feedback fs-5">
                            Email Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Email Incorrecto, ingrese un formato correcto de Email y no debe ser igual al Secundario, no
                            debe tener espacios
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-email2" class="form-label fs-4">Email
                            Secundario</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-email2" id="usuario-email2" 
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>
                        <div class="valid-feedback fs-5">
                            Email Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Email Incorrecto, ingrese un formato correcto de Email y no debe ser igual al Principal no
                            debe tener espacios.
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-celular" class="form-label fs-4">Celular</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-celular" id="usuario-celular" 
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>
                        <div class="valid-feedback fs-5">
                            Celular Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Celular Incorrecto! Debe tener entre 9 y 15 numeros, no debe utilizar letras.
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-tipo" class="form-label fs-4">Tipo
                            Usuario</label>
                    </div>
                    <div class="col-3">
                        <select class="form-select" name="usuario-tipo" id="usuario-tipo" 
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>
                            <option value="1" > Sistema</option>
                            <option value="2" > Administrador</option>
                        </select>
                        <div class="valid-feedback fs-5">
                            Tipo Usuario Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Tipo Usuario Invalido, elija las opciones mencionadas
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col text-end mb-3">
                        <a href="${context_path}/usuario/listaUsuarios" class="btn btn-secondary">Volver</a>
                        <input type="submit" class="btn btn-success" value="Agregar Usuario"
                    </div>
                </div>

            </form>

        </div>
    </div>

     <script src="${context_path}/js/validacionUsuario.js"></script>
</body>

</html>

