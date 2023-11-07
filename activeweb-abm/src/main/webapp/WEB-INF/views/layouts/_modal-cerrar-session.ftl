<!--MODAL PARA CERRAR SESION-->
  <!-- Modal -->
  <div class="modal fade" id="ModalCerrarSesion" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">
            Atencion Cerrando Sesion
          </h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          Esta usted seguro que desea cerrar sesion? <br />
          Presiones Continuar para cerrar sesion u Cancelar para seguir
          navegando
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
            Cancelar
          </button>

          <!--NO OLVIDAR PONER LA URL AL CONTROLADOR QUE CIERRA LA SESION-->
          <a href="${context_path}/home/cerrarSesion" class="btn btn-danger">Cerrar Sesion</a>

        </div>
      </div>
    </div>
  </div>
