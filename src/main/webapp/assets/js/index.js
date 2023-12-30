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
        const recuadroAlto = 50;

        // Dibuja un rectángulo
        context.beginPath();
        context.rect(recuadroX, recuadroY, recuadroAncho, recuadroAlto);
        context.fillStyle = "#FF0000"; // Color rojo, puedes cambiarlo
        context.fill();

        // Agrega texto al rectángulo
        context.font = "14px Arial";
        context.fillStyle = "#FFFFFF"; // Color blanco, puedes cambiarlo
        context.fillText("Tarea 1", recuadroX + 10, recuadroY + 30);
    };

    const dibujar = (cursorX, cursorY) => {
        context.beginPath();
        context.moveTo(initialX, initialY);
        context.lineWidth = 25;
        context.strokeStyle = "#d909cf";
        context.lineCap = "round";
        context.lineJoin = "round";
        context.lineTo(cursorX, cursorY);
        context.stroke();
        initialX = cursorX;
        initialY = cursorY;
    };

    const mouseDown = (evt) => {
        evt.preventDefault();
        if (evt.changedTouches === undefined) {
            initialX = evt.offsetX;
            initialY = evt.offsetY;
        } else {
            //evita desfase al dibujar
            initialX = evt.changedTouches[0].pageX - correccionX;
            initialY = evt.changedTouches[0].pageY - correccionY;
        }
        dibujar(initialX, initialY);
        mainCanvas.addEventListener("mousemove", mouseMoving);
        mainCanvas.addEventListener('touchmove', mouseMoving);
    };

    const mouseMoving = (evt) => {
        evt.preventDefault();
        if (evt.changedTouches === undefined) {
            dibujar(evt.offsetX, evt.offsetY);
        } else {
            dibujar(evt.changedTouches[0].pageX - correccionX, evt.changedTouches[0].pageY - correccionY);
        }
    };

    const mouseUp = () => {
        mainCanvas.removeEventListener("mousemove", mouseMoving);
        mainCanvas.removeEventListener("touchmove", mouseMoving);
    };

    mainCanvas.addEventListener("mousedown", mouseDown);
    mainCanvas.addEventListener("mouseup", mouseUp);

//pantallas tactiles
    mainCanvas.addEventListener('touchstart', mouseDown);
    mainCanvas.addEventListener('touchend', mouseUp);


// Evento de escucha para el clic en el elemento de ancla
    const elementoAncla = document.getElementById("addTask");
    elementoAncla.addEventListener("click", agregarRecuadro);



});