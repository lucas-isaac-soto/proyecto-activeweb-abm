<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesion</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body{
            background-color: #718355;;
        }

    </style>
</head>

<body>

    <div class="container mt-5">
        <div class="row text-center">
            <h1>Iniciar Sesion</h1>
            <p class="fs-4">Para ingresar al Sistema Porfavor Iniciar Sesion primero</p>
        </div>

        <div class="row login-body mt-5">
            <span class="border border-primary-subtle border-3 rounded-4 px-5">

                <form name="j_security_form" method="post" action="j_security_check">
                    <div class="row mt-4 justify-content-end">
                        <div class="col-2">
                            <label class="fs-4" for="user">Usuario</label>
                        </div>
    
                        <div class="col-9 align-self-center">
                            <input class="" type="text" name="j_username" id="user" placeholder="Usuario"/>
                        </div>
                    </div>
                    
                    <div class="row mt-4 justify-content-end">
                        <div class="col-2">
                            <label class="fs-4" for="Password">Password</label>        
                        </div>
                        <div class="col-9 align-self-center">
                            <input type="password" name="j_password" id="Password" placeholder="Password"/>
                        </div>
                    </div>
                    
                    <div class="row mt-4 mb-4 justify-content-end">
                            <button class="btn btn-warning btn-lg" type="submit">Continuar</button>
                    </div>
                </form>
                
            </span>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>