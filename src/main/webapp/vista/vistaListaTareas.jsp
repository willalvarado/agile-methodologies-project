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
                <li><a href="#">Negro</a></li>
                <li><a href="#">Azul</a></li>
                <li><a href="#">Rojo</a></li>
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
                <li><a href="#">Pequeño</a></li>
                <li><a href="#">Mediano</a></li>
                <li><a href="#">Grande </a></li>
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
                <li><a href="#">Pequeño</a></li>
                <li><a href="#">Mediano</a></li>
                <li><a href="#">Grande </a></li>
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
                <li><a href="#">Trazos</a></li>
                <li><a href="#">Texto</a></li>
                <li><a href="#">Todo </a></li>
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
        <button id = "addTask" data-bs-toggle="modal" data-bs-target="#addTaskModal" class="fa fa-thumb-tack"></button>
        <button class="fa fa-commenting"></button>
    </div>
    <div class="btn-mas">
        <label for="btn-mas" class="fa fa-plus"></label>
    </div>
</div>










<!-- Modal para agregar tarea -->
<div class="modal fade" id="addTaskModal" tabindex="-1" aria-labelledby="addTaskModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addTaskModalLabel">Agregar Tarea</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Formulario para agregar una nueva tarea -->
                <form id="addTaskForm" action="/addtask-controller" method="post">
                    <div class="mb-3">
                        <label for="taskName" class="form-label">Nombre de la Tarea</label>
                        <input type="text" class="form-control" id="taskName" name="taskName" required>
                    </div>
                    <div class="mb-3">
                        <label for="taskDescription" class="form-label">Descripción</label>
                        <textarea class="form-control" id="taskDescription" name="taskDescription"
                                  rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="taskDate" class="form-label">Fecha</label>
                        <input type="date" class="form-control" id="taskDate" name="taskDate" required>
                    </div>
                    <div class="mb-3">
                        <label for="taskTime" class="form-label">Hora</label>
                        <input type="time" class="form-control" id="taskTime" name="taskTime" required>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary" form="addTaskForm">Agregar</button>
            </div>
        </div>
    </div>
</div>













<!-- Enlace a los scripts de Bootstrap (CDN) y jQuery (para modales) -->
<script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
<script src="../assets/js/index.js"></script>
<script src="../assets/js/app.js"></script>
</body>

</html>