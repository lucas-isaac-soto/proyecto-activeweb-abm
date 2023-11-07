<!DOCTYPE html>
<html>
    <head>
        <title>Error</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    </head>
       
        <style>
            body {
                background-color: rgb(130, 33, 33);
            }

            h1,h2,p,li {
                color: white;
            }
        </style>

    <body>
        <div class="container">
        <div class="row text-center mt-5">
            <h1 class="fs-1 light">Errores Ocurrido</h1>
            <p class="fs-3">Ha ocurrido un error de sistema al procesar los datos ingresados.</p>
        </div>
        <div class="row">
            <h2>Detalles:</h2>

            <ul class="list-group list-group-flush">
                <#list errores as error>
                    <li class="list-group-item mt-2 fs-5">${error}</li>
                </#list>
            </ul>

            <a class="btn btn-light btn-lg mt-3" href="${context_path}/usuario/listar">volver al listado</a>
        </div>

    </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
    </body>
</html>
