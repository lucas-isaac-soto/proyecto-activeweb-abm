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
    
 const deleteButtons = document.querySelectorAll('.borrar-usuario');
 const modal = document.getElementById('ModalBorrarUsuario');
 const borrarRef = (document.querySelector('#boton-borrar')).href;
 console.log(borrarRef);
 
 deleteButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            const checkbox = document.querySelector('#acepto-borrar');
            checkbox.checked = false;
            
            const usuarioId = this.parentElement.parentElement.querySelector('td:first-child').innerText;
            const usuarioNombre = this.parentElement.parentElement.querySelector('td:nth-child(2)').innerText;
            const usuarioApellido = this.parentElement.parentElement.querySelector('td:nth-child(3)').innerText;
            const usuarioAlias = this.parentElement.parentElement.querySelector('td:nth-child(4)').innerText;
            const usuarioContrasenia = this.parentElement.parentElement.querySelector('td:nth-child(5)').innerText;
            const usuarioEmailPrincipal = this.parentElement.parentElement.querySelector('td:nth-child(6)').innerText;
            const usuarioEmailSecundario = this.parentElement.parentElement.querySelector('td:nth-child(7)').innerText;
            const usuarioCelular = this.parentElement.parentElement.querySelector('td:nth-child(8)').innerText;
            const usuarioTipoUsuario = this.parentElement.parentElement.querySelector('td:nth-child(9)').innerText;
            const usuarioFechaAlta = this.parentElement.parentElement.querySelector('td:nth-child(10)').innerText;
            
                            
            const modalId = document.querySelector('.modal-id');
            modalId.textContent = "ID = " + usuarioId;
            const modalNombre = document.querySelector('.modal-nombre');
            modalNombre.textContent = "NOMBRE = " +  usuarioNombre;
            const modalApellido = document.querySelector('.modal-apellido');
            modalApellido.textContent = "APELLIDO = " +  usuarioApellido;
            const modalAlias = document.querySelector('.modal-alias');
            modalAlias.textContent = "ALIAS = " +  usuarioAlias;
            const modalContrasenia = document.querySelector('.modal-contrasenia');
            modalContrasenia.textContent = "CONTRASENIA = " +  usuarioContrasenia;
            const modalEmailPrimario = document.querySelector('.modal-email-primario');
            modalEmailPrimario.textContent = "EMAIL PRINCIPAL = " +  usuarioEmailPrincipal;
            const modalEmailSecundario = document.querySelector('.modal-email-secundario');
            modalEmailSecundario.textContent = "EMAIL SECUNDARIO = " +  usuarioEmailSecundario;
            const modalCelular = document.querySelector('.modal-celular');
            modalCelular.textContent = "CELULAR = " +  usuarioCelular;
            const modalTipo = document.querySelector('.modal-tipo-usuario');
            modalTipo.textContent = "TIPO USUARIO = " +  usuarioTipoUsuario;
            const modalFechaAlta = document.querySelector('.modal-fecha-alta');
            modalFechaAlta.textContent = "FECHA ALTA = " +  usuarioFechaAlta;
            
            const botonBorrar = document.querySelector('#boton-borrar');
            var valueRef = borrarRef;
            botonBorrar.href = valueRef + usuarioId;
        });
    });