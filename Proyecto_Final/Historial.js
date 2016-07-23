/* Esta función llama a la funcion ObtenerMaratonResultado() cuando se carga la página. */
$(document).ready(function () {
    ObtenerMaratones();
});


/* Esta función llama al Web Service ObtenerEquipo, en caso de obtener una respuesta valida, 
llama a la funcion cargarListadoMaratones(). */
function ObtenerMaratones(data) {
    $.support.cors = true;
    $.ajax({
        type: "POST",
        url: "../MaratonServicioWeb.asmx/ObtenerMaratonResultado",
        //data: document.getElementById('Label1'),
        async: true,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if (response.d.length > 0) {
                cargarListadoMaratones(response.d);
            }
        },
        error: function (xhr, status, error) {
            debugger;
            alert(xhr.responseText);
        }
    });
}


/* Esta función busca el TAG <tbody> de la tabla ListadoEquipos, crea un fila <tr> por  
cada objeto retornado por el Web Service y le agrega una celda <td> por cada atributo. */
function cargarListadoMaratones(lista) {
    $.each(lista, function (index, obj) {
        $('#historial tbody:last')
                    .append($('<tr>')
                        .append($('<td>').html(obj.nombreMaraton))
                        .append($('<td>').html(obj.posicionFinal))
                        .append($('<td>').html(obj.tiempoLlegada))
                        .append($('<td>').html(obj.premio1))
                        .append($('<td>').html(obj.premio2))
                        .append($('<td>').html(obj.premio3))

                 )
    });

}