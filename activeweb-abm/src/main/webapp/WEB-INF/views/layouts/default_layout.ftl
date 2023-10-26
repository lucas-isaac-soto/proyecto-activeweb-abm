<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Proyecto Activeweb</title>
    </head>
    
    <body>
        <header>
            <p>${session.usuario}</p>
            <a href="${context_path}/home/cerrarSesion">Cerrar Sesion</a>
        </header>
        <div class="contenido">
            ${page_content}
        </div>

    </body>
</html>