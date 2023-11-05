const rexNombreApellido = new RegExp("^[A-ZÑa-zñ ]{3,}$");
const inputNombre = document.getElementById('usuario-nombre');
const inputApellido = document.getElementById('usuario-apellido');

const rexAlias = new RegExp("^[A-Za-z0-9_-]{3,}$");
const inputAlias = document.getElementById('usuario-alias');

const rexContrasenia = new RegExp("^[A-Za-z0-9_-]{7,16}$");
const inputContrasenia = document.getElementById('usuario-contrasenia');

const rexEmail = new RegExp("^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*(\\.\\w{2,3})+$");
const inputEmail1 = document.getElementById('usuario-email1');
const inputEmail2 = document.getElementById('usuario-email2');

const rexCelular = new RegExp("^[\\+]?[(]?[0-9]{3}[)]?[-\\s\\.]?[0-9]{3}[-\\s\\.]?[0-9]{3,6}$");
const inputCelular = document.getElementById('usuario-celular');

const inputTipoUsuario = document.getElementById('tipo-usuario');

function actualizarInput(input,valor){
    let mensajeExito = input.parentElement.querySelector('.valid-feedback');
    let mensajeFracaso = input.parentElement.querySelector('.invalid-feedback');

    if(valor){
        input.classList.remove("is-invalid");
        mensajeFracaso.classList.remove("mostrar-input");

        input.classList.add("is-valid");
        mensajeExito.classList.add("mostrar-input");
    }else{
        input.classList.remove("is-valid");
        mensajeExito.classList.remove("mostrar-input");

        input.classList.add("is-invalid");
        mensajeFracaso.classList.add("mostrar-input");
    }
}

function validarDatosUsuario(){
    let formularioValido = true;

    inputNombre.value.match(rexNombreApellido) != null ? actualizarInput(inputNombre,true) : (actualizarInput(inputNombre,false),formularioValido = false);
    inputApellido.value.match(rexNombreApellido) != null ? actualizarInput(inputApellido,true) : (actualizarInput(inputApellido,false),formularioValido = false);
    
    inputAlias.value.match(rexAlias) != null ? actualizarInput(inputAlias,true) : (actualizarInput(inputAlias,false),formularioValido = false);
    inputContrasenia.value.match(rexContrasenia) != null ? actualizarInput(inputContrasenia,true) : (actualizarInput(inputContrasenia,false),formularioValido = false);
    
    inputEmail1.value.match(rexEmail) != null ? actualizarInput(inputEmail1,true) : (actualizarInput(inputEmail1,false),formularioValido = false);
    inputEmail2.value.match(rexEmail) != null ? actualizarInput(inputEmail2,true) : (actualizarInput(inputEmail2,false),formularioValido = false);
    if (inputEmail1.value == inputEmail2.value){
        actualizarInput(inputEmail1,false);
        actualizarInput(inputEmail2,false);
        formularioValido = false;
    }

    inputCelular.value.match(rexCelular) != null ? actualizarInput(inputCelular,true) : (actualizarInput(inputCelular,false),formularioValido = false);

    if(inputTipoUsuario.value === "1" || inputTipoUsuario.value === "2")
        actualizarInput(inputTipoUsuario,true);
    else{
        actualizarInput(inputTipoUsuario,false);
        formularioValido = false;
    }

    return formularioValido;
}