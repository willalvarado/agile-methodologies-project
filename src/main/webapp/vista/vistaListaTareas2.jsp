<%@ page import="model.Task" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaskMaker</title>
    <!-- Enlace al CSS de Bootstrap (CDN) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 class="mt-3">TaskMaker</h1>
    <div class="d-flex justify-content-end mt-2">
        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addTaskModal">Agregar Tarea</button>
    </div>






        <%
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");
    for (Task task : tasks) {
        String taskId = String.valueOf(task.getId()); // Crear un identificador único para cada tarea
%>

    <div class="mt-4">
        <form id="eliminarForm<%=taskId%>" action="/deleteTask-controller" method="post">
            <input type="hidden" name="id" value="<%=taskId%>"> <!-- Campo oculto para el id -->
            <div class="card mb-3">
                <div class="card-body">
                    <!-- Campo de entrada editable para el título -->
                    <h5 class="card-title" contenteditable="true"><%= task.getName() %></h5>
                    <!-- Campo de entrada editable para la descripción -->
                    <p class="card-text" contenteditable="true"><%= task.getDescription()%></p>
                    <!-- Campo de entrada editable para la fecha -->
                    <p class="card-text">
                        Fecha: <input type="date" class="form-control" value="<%=task.getDate()%>">
                    </p>
                    <!-- Campo de entrada editable para la hora -->
                    <p class="card-text">
                        Hora: <input type="time" class="form-control" value="<%=task.getTime()%>">
                    </p>
                    <!-- Botón para eliminar la tarea -->
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#confirmarEliminarModal<%=taskId%>">Eliminar</button>
                    <!-- Botón para finalizar la tarea -->
                    <button class="btn btn-success">Finalizar</button>
                </div>
            </div>

            <!-- Modal de confirmación para eliminar tarea -->
            <div class="modal fade" id="confirmarEliminarModal<%=taskId%>" tabindex="-1" aria-labelledby="confirmarEliminarModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="confirmarEliminarModalLabel">Confirmar Eliminación</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            ¿Está seguro de eliminar la tarea?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-danger">Eliminar</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

            <% } %>



















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
</body>
</html>