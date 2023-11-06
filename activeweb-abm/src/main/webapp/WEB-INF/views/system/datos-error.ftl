<!DOCTYPE html>
<html>
    <head>
        <title>500 - error del servidor</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <h1>Error De Ingreso De Datos</h1>
        <p>Ha ocurrido un error de sistema al procesar los datos ingresados.</p>
        <h2>Detalles:</h2>

        <ul>
            <#list errores as error>
                    <li>${error}</li>
            </#list>
        </ul>
        
        <a href="${context_path}/">volver a inicio</a>   
    </body>
</html>
