package controlador;

import java.sql.Date;
import java.sql.Time;

public class ControladorTarea {
/*
    public Task crearTarea(int id, String nombre, String descripcion, String estado, Date fecha, Time hora){
        Task nuevaTarea = new Task();

        nuevaTarea.setId(id);
        nuevaTarea.setNombre(nombre);
        nuevaTarea.setDescripcion(descripcion);
        nuevaTarea.setEstado(estado);

        if (horaEsCorrecta(hora) && fechaEsCorrecta(fecha)){
            nuevaTarea.setHora(hora);
            nuevaTarea.setFecha(fecha);
            return nuevaTarea;
        }

        return null;

    }*/

    private boolean horaEsCorrecta (Time hora){
        if(hora.getHours() > 23|| hora.getMinutes() > 59 || hora.getSeconds() > 59
                || hora.getHours() < 0|| hora.getMinutes() < 0 || hora.getSeconds() < 0){
            return false;
        } else {
            return true;
        }
    }

    private boolean fechaEsCorrecta (Date fecha){
        if(fecha.getYear() > 300 || fecha.getMonth() > 11 || fecha.getDay() > 31
                || fecha.getYear() < 0|| fecha.getMonth() < 0 || fecha.getDay() < 0){
            return false;
        } else {
            return true;
        }
    }
}
