//Esta funcion se utiliza para actualizar el display de fecha y hora
function actualizarFechaTiempo() {
    var now = dayjs();
    var fecha = now.format('DD/MM/YYYY');
    var tiempo = now.format('HH:mm:ss');

    document.getElementById('fecha').textContent = fecha;
    document.getElementById('tiempo').textContent = tiempo;
}

actualizarFechaTiempo();
setInterval(actualizarFechaTiempo, 1000);


