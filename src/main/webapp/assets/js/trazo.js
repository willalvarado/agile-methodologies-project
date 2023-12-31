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
    const btnBlack = document.getElementById("btn-black"); //aquí va el id
    btnRed.addEventListener("click", setBlack);//aqui la función que cambia el color
    const btnBlue = document.getElementById("btn-blue"); //aquí va el id
    btnRed.addEventListener("click", setBlue);//aqui la función que cambia el color
    const btnPurple = document.getElementById("btn-purple"); //aquí va el id
    btnRed.addEventListener("click", setPurple);//aqui la función que cambia el color
    const btnGreen = document.getElementById("btn-green"); //aquí va el id
    btnRed.addEventListener("click", setGreen);//aqui la función que cambia el color
    const btnYellow = document.getElementById("btn-yellow"); //aquí va el id
    btnRed.addEventListener("click", setYellow);//aqui la función que cambia el color
    

//TODO aregar los otros eventos para los otros botones


});
