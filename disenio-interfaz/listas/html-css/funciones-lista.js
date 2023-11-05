const checkbox = document.getElementById('acepto-borrar');
const botonBorrar = document.getElementById('boton-borrar');

    checkbox.addEventListener('change', function() {
        if (this.checked) {
            botonBorrar.classList.remove('disabled');
            botonBorrar.removeAttribute('disabled');
        } else {
            botonBorrar.classList.add('disabled');
            botonBorrar.setAttribute('disabled', 'disabled');
        }
    });
