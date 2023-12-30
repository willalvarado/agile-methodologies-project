document.addEventListener("DOMContentLoaded", function () {

//Guardar el elemento y el contexto
    const mainCanvas = document.getElementById("main-canvas");
    const context = mainCanvas.getContext("2d");


// Función para agregar un rectángulo con texto al lienzo
    const setRed = () => {

        context.strokeStyle = "#d90909";

    };




// Evento de escucha para el clic en el elemento de ancla
    const btnRed = document.getElementById("btn-red");
    btnRed.addEventListener("click", setRed);

});