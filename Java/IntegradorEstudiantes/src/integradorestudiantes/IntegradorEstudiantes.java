package integradorestudiantes;

import Objeto.Estudiante;

public class IntegradorEstudiantes {

    public static void main(String[] args) {
        Estudiante[] estudiantes = Estudiante.main();

        double promedioNotas = Estudiante.promedioNotas(estudiantes);
        System.out.println("El promedio de notas del curso es: " + promedioNotas);
    }
}
