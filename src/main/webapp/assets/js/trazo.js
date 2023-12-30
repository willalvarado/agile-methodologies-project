document.addEventListener("DOMContentLoaded", function () {

//Guardar el elemento y el contexto
    const mainCanvas = document.getElementById("main-canvas");
    const context = mainCanvas.getContext("2d");



// Función para cambiar el color a rojo
    const setRed = () => {
        context.strokeStyle = "#d90909";
    };
//TODO aregar las otras funciones para los otros colores

// Evento de escucha para el clic en el boton
    const btnRed = document.getElementById("btn-red"); //aquí va el id
    btnRed.addEventListener("click", setRed);//aqui la función que cambia el color

//TODO aregar los otros eventos para los otros botones


});