package Main;


import Objetos.Animal;
import Objetos.Caballo;
import Objetos.Gato;
import Objetos.Perro;
import java.util.ArrayList;

public class Main {
// protected String nombre;
//    protected String alimento;
//    protected Integer edad;
//    protected String raza;
    public static void main(String[] args) {
        Animal a= new Animal();
        Animal b= new Perro("Jack ", "Balanceado", 4, "Golden");
        Animal c= new Gato("Blanco ", "CatChow",5,"Siames");
        Animal d=new Caballo("Caballo ", "Paasto", 10, "Percheron");
        
        ArrayList<Animal>lista=new ArrayList<>();
        lista.add(b);
        lista.add(c);
        lista.add(d);
        for (Animal animal : lista) {
            animal.AlimentarseAnimal();
        }
    }
}
