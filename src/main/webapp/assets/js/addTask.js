document.addEventListener("DOMContentLoaded", function () {

//Guardar el elemento y el contexto
    const mainCanvas = document.getElementById("main-canvas");
    const context = mainCanvas.getContext("2d");

    let initialX;
    let initialY;
    let correccionX = 0;
    let correccionY = 0;

    let posicion = mainCanvas.getBoundingClientRect();
    correccionX = posicion.x;
    correccionY = posicion.y;


// Función para agregar un rectángulo con texto al lienzo
    const agregarRecuadro = () => {
        // Puedes personalizar las propiedades del rectángulo (x, y, ancho, alto, color, etc.)
        const recuadroX = 50;
        const recuadroY = 50;
        const recuadroAncho = 100;
        const recuadroAlto = 200;

        // Dibuja un rectángulo
        context.beginPath();
        context.rect(recuadroX, recuadroY, recuadroAncho, recuadroAlto);
        context.fillStyle = "#00ff04"; // Color rojo, puedes cambiarlo
        context.fill();

        // Agrega texto al rectángulo
        context.font = "14px Arial";
        context.fillStyle = "#FFFFFF"; // Color blanco, puedes cambiarlo
        context.fillText("Tarea 1", recuadroX + 10, recuadroY + 30);
    };




// Evento de escucha para el clic en el elemento de ancla
    const elementoAncla = document.getElementById("addTask");
    elementoAncla.addEventListener("click", agregarRecuadro);



});