<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Modificacion</title>
</head>

<body>
    <div class="container modificar-cuerpo mt-5">
        
        <div class="row">
            <h2 class="text-center">Modificacion del Usuario</h2>
        </div>

        <div class="row">

            <!--Formulario que envia input al controlador correspondiente si se validan los inputs antes-->
            <form action="${context_path}/usuario/modificar/${usuarioBuscado.id_usuario}" onsubmit="return validarDatosUsuario()" method="post">
                
                <!--ID label + input-->
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-id" class="form-label fs-4">id</label></div>
                    
                    <div class="col-1">
                        <input type="number" class="form-control col-auto" name="usuario-id" id="usuario-id" disabled  value="${usuarioBuscado.id_usuario}" 
                        required>
                    </div>
                </div>

                <!--Nombre label + input y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center">
                        <label for="usuario-nombre" class="form-label fs-4">Nombre</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-nombre" id="usuario-nombre"  value="${usuarioBuscado.nombre}" 
                        title="Un nombre debe tener minimo 3 letras y no debe tener numeros" required>
                        
                        <!--Mensajes de exito y error-->
                        <div class="valid-feedback fs-5">
                            Nombre Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Nombre Incorrecto, no debe tener numeros ni caracteres especiales y debe tener 3 o mas
                            letras
                        </div>
                    </div>
                </div>

                <!--Apellido label + input y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center">
                        <label for="usuario-apellido" class="form-label fs-4">Apellido</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-apellido" id="usuario-apellido"  value="${usuarioBuscado.apellido}"
                        title="Un Apellido debe tener minimo 3 letras y no debe tener numeros" required>

                        <!--Mensajes de exito y error-->
                        <div class="valid-feedback fs-5">
                            Apellido Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Apellido Incorrecto, no debe tener numeros ni caracteres especiales y debe tener 3 o mas
                            letras
                        </div>
                    </div>
                </div>

                
                <!--Alias label + input y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center">
                        <label for="usuario-alias" class="form-label fs-4">Alias</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-alias" id="usuario-alias" value="${usuarioBuscado.alias}" 
                        title="Un Alias debe tener minimo 3 letras, puede tener letras, numeros incluso - _" required>
                        
                        <!--Mensajes de exito y error-->
                        <div class="valid-feedback fs-5">
                            Alias Correcto
                        </div>
                        <div class="invalid-feedback fs-5">
                            Alias Incorrecto, debe tener 3 o mas caracteres y solo usar numeros, letras y ( - o _ ) y no
                            usar espacios
                        </div>
                    </div>
                </div>


                <!--Contrasenia label + input y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center">
                        <label for="usuario-contrasenia" class="form-label fs-4">Contrasenia</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-contrasenia" id="usuario-contrasenia" required value="${usuarioBuscado.contrasenia}" 
                        title="Debe tener minimo 7 hasta 16 caracteres y solo usar numeros, letras y ( - o _ ) y no usar espacios" required>
                        
                        <!--Mensajes de exito y error-->
                        <div class="valid-feedback fs-5">
                            Contrasenia Correcta
                        </div>
                        <div class="invalid-feedback fs-5">
                            Contrasenia Incorrecta, debe tener entre 7 y 16 caracteres y solo usar numeros, letras y ( -
                            o _ ) y no usar espacios
                        </div>
                    </div>
                </div>

                
                <!--Email Primario label + input y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center">
                        <label for="usuario-email1" class="form-label fs-4">Email Principal</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-email1" id="usuario-email1"  value="${usuarioBuscado.email_principal}" 
                        title="Debe tener un formato correcto de Email y no igual al secundario y sin espacio" required>
                        
                        <!--Mensajes de exito y error-->
                        <div class="valid-feedback fs-5">
                            Email Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Email Incorrecto, ingrese un formato correcto de Email y no debe ser igual al Secundario, no
                            debe tener espacios
                        </div>
                    </div>
                </div>


                <!--Email Secundario label + input y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center">
                        <label for="usuario-email2" class="form-label fs-4">Email Secundario</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-email2" id="usuario-email2" value="${usuarioBuscado.email_secundario}" 
                        title="Debe tener un formato correcto de Email y no igual al primario y sin espacio" required>
                        
                        <!--Mensajes de exito y error-->
                        <div class="valid-feedback fs-5">
                            Email Correcto!
                        </div>
                        <div class="invalid-feedback fs-5">
                            Email Incorrecto, ingrese un formato correcto de Email y no debe ser igual al Principal no
                            debe tener espacios.
                        </div>
                    </div>
                </div>


                <!--Celular label + input y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center">
                        <label for="usuario-celular" class="form-label fs-4">Celular</label>
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control col-auto" name="usuario-celular" id="usuario-celular" value="${usuarioBuscado.numero_celular}"
                        title="Debe tener entre 9 y 15 numeros, no debe utilizar letras" required>
                        
                        <!--Mensajes de exito y error-->
                        <div class="valid-feedback fs-5">
                            Celular Correcto!listaUsuarios
                        </div>
                        <div class="invalid-feedback fs-5">
                            Celular Incorrecto! Debe tener entre 9 y 15 numeros, no debe utilizar letras.
                        </div>
                    </div>
                </div>


                <!--Tipo label + select y mensajes de exito y fallo-->
                <div class="row">
                    <div class="col-3 text-center"><label for="usuario-tipo" class="form-label fs-4">Tipo
                            Usuario</label>
                    </div>
                    <div class="col-3">
                        <select class="form-select" name="usuario-tipo" id="usuario-tipo" value="${usuarioBuscado.id_tipo_usuario}" 
                        title="Debe ser Sistema o Administrador" required>
                            <#list listaTipos as tipo>
                                <option value="${tipo.id_tipo}" <#if "${tipo.id_tipo}" == "${usuarioBuscado.id_tipo_usuario}"> selected </#if> >${tipo.nombre_tipo}</option>
                            </#list>       
                        </select>
                        
                        <!--Mensajes de exito y error-->
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
                        <a href="${context_path}/usuario/listar" class="btn btn-secondary">Volver</a>
                        <input type="submit" class="btn btn-success" value="Modificar">
                    </div>
                </div>
            </form>
        </div>
    </div>
    
    <script src="${context_path}/js/validacionUsuario.js"></script>
</body>

</html>