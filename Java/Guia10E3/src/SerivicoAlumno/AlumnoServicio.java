package SerivicoAlumno;

import Alumno.Alumno;
import java.util.ArrayList;
import java.util.Scanner;

public class AlumnoServicio {

    private Scanner leer = new Scanner(System.in).useDelimiter("\n");
    private ArrayList<Alumno> curso = new ArrayList<>();

    public Alumno crearAlumno() {
        Alumno a1 = new Alumno();
        System.out.println("Ingrese el nombre del alumno");
        a1.setNombre(leer.next());
        System.out.println("Ingrese las 3 notas del alumno");
        a1.getNotas().add(leer.nextInt());
        a1.getNotas().add(leer.nextInt());
        a1.getNotas().add(leer.nextInt());
        return a1;
    }

    public void crearCurso() {
        String resp = "";

        do {
            curso.add(crearAlumno());
            System.out.println("¿Quiere ingresar otro alumno? S:si N:no");
            resp = leer.next();
        } while (resp.equalsIgnoreCase("s"));

        mostrarAlumnos();
        System.out.println("¿Desea conocer el promedio de notas de algún alumno? S:si N:no");
        resp = leer.next();

        if (resp.equalsIgnoreCase("s")) {
            System.out.println("Ingrese el nombre del alumno:");
            String nombre = leer.next();

            for (Alumno alumno : curso) {
                if (alumno.getNombre().equalsIgnoreCase(nombre)) {
                    double promedio = calcularPromedio(alumno);
                    System.out.println("El promedio de notas de " + nombre + " es: " + promedio);
                    break;
                }
            }
        }
    }

    public void mostrarAlumnos() {
        System.out.println("Lista de alumnos:");

        for (Alumno alumno : curso) {
            System.out.println(alumno.getNombre());
        }
    }

    public double calcularPromedio(Alumno alumno) {
        ArrayList<Integer> notas = alumno.getNotas();
        int totalNotas = notas.size();
        int sumaNotas = 0;

        for (int i = 0; i < totalNotas; i++) {
            sumaNotas += notas.get(i);
        }

        return (double) sumaNotas / totalNotas;
    }
}
