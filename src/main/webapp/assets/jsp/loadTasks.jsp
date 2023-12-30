<%@ page import="model.Task" %>
<%@ page import="java.util.List" %>
<%
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");
%>
document.addEventListener("DOMContentLoaded", function () {
const mainCanvas = document.getElementById("main-canvas");
const context = mainCanvas.getContext("2d");
<% int x = 20;
    int y = 10;
    int ancho = 300;
    int alto = 150;%>


<% for (Task task : tasks) { %>
const recuadroX_<%= task.getId() %> = <%=x%> ; // Ajusta según tus necesidades
const recuadroY_<%= task.getId() %> = <%=y%>; // Ajusta según tus necesidades
const recuadroAncho_<%= task.getId() %> = <%=ancho%>; // Ajusta según tus necesidades
const recuadroAlto_<%= task.getId() %> = <%=alto%>; // Ajusta según tus necesidades

context.beginPath();
context.rect(recuadroX_<%= task.getId() %>, recuadroY_<%= task.getId() %>, recuadroAncho_<%= task.getId() %>, recuadroAlto_<%= task.getId() %>);
context.fillStyle = "#D80032"; // Ajusta según tus necesidades
context.fill();

context.font = "18px Arial";
context.fillStyle = "#EDF2F4";
context.fillText("<%= task.getName() %>", recuadroX_<%= task.getId() %> + <%= ancho / 2 - 30 %>, recuadroY_<%= task.getId() %> + 30);
context.font = "16px Arial";
context.fillText("<%= task.getDescription() %>", recuadroX_<%= task.getId() %> + 10, recuadroY_<%= task.getId() %> + 60);
context.fillText("<%= task.getDate() %>", recuadroX_<%= task.getId() %> + 10, recuadroY_<%= task.getId() %> + 85);
context.fillText("<%= task.getTime() %>", recuadroX_<%= task.getId() %> + 10, recuadroY_<%= task.getId() %> + 110);

<% x += ancho + 20;
} %>
});
