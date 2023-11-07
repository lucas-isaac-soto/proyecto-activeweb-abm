<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
  <div class="container-fluid">
    <nav class="navbar row">
      <div class="col-2">
        <a class="navbar-brand fs-4 logo" href="${context_path}/home/index">
          <i class="bi bi-person-arms-up"></i>Sys-Orden
        </a>
      </div>
      <div class="col-4 text-center pt-3">
        <p id="fecha" class="fs-4"></p>
      </div>
      <div class="col-4 text-center pt-3">
        <p id="tiempo" class="fs-4"></p>
      </div>

      <!--Aca se encuentra el usuario con el dropdow-->
      <div class="col-2">
        <div class="btn-group">
          <button type="button" class="btn dropdown-toggle fs-5" data-bs-toggle="dropdown" aria-expanded="false">
            ${session.usuario}
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Perfil</a></li>
            <li><a class="dropdown-item" href="${context_path}/usuario/listar">Lista Usuarios</a></li>
            <li><a class="dropdown-item" href="#">Prox. funcionalidad</a></li>
            <li>
              <hr class="dropdown-divider" />
            </li>
            <li class="d-grid gap-2">
              <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ModalCerrarSesion">
                Cerrar Sesion
              </button>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  
  <#include "_modal-cerrar-session.ftl" >
    
  <script src="https://cdn.jsdelivr.net/npm/dayjs@1/dayjs.min.js"></script>
</body>

</html>
