<%@ page import="model.Task" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ToDoApp</title>

    <!--font awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />


    <!--css file-->
    <link rel="stylesheet" href="../assets/css/styles.css" />
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
</head>

<body>







<script src="../assets/jsp/loadTasks.jsp"></script>



<div class="sidebar close">

    <div class="logo">
        <i id="menu-button" class="fas fa-bars"></i>
        <!-- <i class="fab fa-trade-federation"></i> -->
        <span class="logo-name">ToDoApp</span>
    </div>

    <ul class="nav-list">

        <li>
            <div class="icon-link">
                <a href="#">
                    <i class="fas fa-paint-brush"></i>
                    <span class="link-name">Colores</span>
                </a>
                <i class="fas fa-caret-down arrow"></i>
            </div>

            <ul class="sub-menu">
                <li><a href="#" class="link-name">Colores</a></li>
                <!-- TODO  Asignar un id a los botones y agregar la funcion en assets/js/trazo.js-->
             <li><button id="btn-negro">Negro</button></li>
             <li><button id="btn-blue">Azul</button></li>
             <li><button id="btn-red">Rojo</button></li>
             <li><button id="btn-purple">Morado</button></li>
             <li><button id="btn-green">Verde</button></li>
             <li><button id="btn-yellow">Amarillo</button></li>

               
            </ul>
        </li>

        <li>
            <div class="icon-link">
                <a href="#">
                    <i class="fab fa-google-wallet"></i>
                    <span class="link-name">Trazo</span>
                </a>
                <i class="fas fa-caret-down arrow"></i>
            </div>

            <ul class="sub-menu">
                <li><a href="#" class="link-name">Trazo</a></li>
                <li><button>Pequeño</button></li>
                <li><button>Mediano</button></li>
                <li><button>Grande</button></li>
            </ul>
        </li>

        <li>
            <div class="icon-link">
                <a href="#">
                    <i class="fa fa-etsy"></i>
                    <span class="link-name">Texto</span>
                </a>
                <i class="fas fa-caret-down arrow"></i>
            </div>

            <ul class="sub-menu">
                <li><a href="#" class="link-name">Texto</a></li>
                <li><button>Pequeño</button></li>
                <li><button>Mediano</button></li>
                <li><button>Grande</button></li>
            </ul>
        </li>

        <li>
            <div class="icon-link">
                <a href="#">
                    <i class="fas fa-eraser"></i>
                    <span class="link-name">Borrar</span>
                </a>
                <i class="fas fa-caret-down arrow"></i>
            </div>

            <ul class="sub-menu">
                <li><a href="#" class="link-name">Borrar</a></li>
                <li><button>Borrador</button></li>
                <li><button>BorrarTrazos</button></li>
                <li><button>BorrarTodo</button></li>
            </ul>
        </li>




        <li>
            <a href="#">
                <i class="fas fa-gear"></i>
                <span class="link-name">Configurar</span>
            </a>

            <ul class="sub-menu blank">
                <li><a href="#" class="link-name">Configurar</a></li>
            </ul>
        </li>

        <li>
            <div class="profile-details">
                <div class="profile-content">
                    <img src="../assets/img/user.png" alt="" />
                </div>

                <div class="name-job">
                    <div class="name">Grupo65</div>
                    <div class="job">Web Developer</div>
                </div>
                <i class="fas fa-right-to-bracket"></i>
            </div>
        </li>
    </ul>
</div>







<main class="main-container">
    <canvas id="main-canvas" width="1270" height="580"></canvas>
</main>

<div class="ctrlZY">
    <button id="btnLeft" class="fa fa-arrow-left"></button>
    <button id="btnRight" class="fa fa-arrow-right"></button>
</div>


<div class="container">
    <input type="checkbox" id="btn-mas">
    <div class="redes">
        <button id = "addTask"  class="fa fa-thumb-tack"></button>
        <button class="fa fa-commenting"></button>
    </div>
    <div class="btn-mas">
        <label for="btn-mas" class="fa fa-plus"></label>
    </div>
</div>






<script src="../assets/js/canva.js"></script>
<script src="../assets/js/trazo.js"></script>
<script src="../assets/js/sideBar.js"></script>
<script src="../assets/js/addTask.js"></script>
</body>

</html>
