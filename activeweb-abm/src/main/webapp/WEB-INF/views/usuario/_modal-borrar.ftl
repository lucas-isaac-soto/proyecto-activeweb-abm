
<div class="modal fade" id="ModalBorrarUsuario" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    
    
    <div class="modal-dialog">
        <div class="modal-content">

            <!--Header del modal-->
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">
                    Atencion Borrando Usuario
                </h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <!--Cuerpo del modal-->
            <div class="modal-body">

                Usted esta a punto de borrar al siguiente usuario: <br>
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
                 </table>

                <!--Input para asegurarse que quiere borrar el usuario--> 
                <input id="acepto-borrar" class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    Acepto eliminar al usuario.
                </label>

                <br>
                Presiones Borrar Usuario para eliminarlo completamente o Cancelar volver.
            </div>

            <!--Botones para borrar o cancelar el eliminado-->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                    Cancelar
                </button>

                <!--NO OLVIDAR PONER LA URL AL CONTROLADOR QUE CIERRA LA SESION-->
                <p id="url-borrar" style="display:none;">${context_path}/usuario/borrarUsuario/</p>

                <a id="boton-borrar" href="${context_path}/usuario/borrarUsuario/" class="btn btn-danger disabled">
                    Borrar Usuario
                </a>
            </div>

        </div>
    </div>
</div>
