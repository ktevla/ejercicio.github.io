
/**
 * Write a description of class NominaEstr here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
import java.util.Scanner;
public class NominaEstr
{
    public static void main(String[] args){
        Scanner objSc = new Scanner(System.in);
        int numeroEmpleados;
        String[] identificaciones = new String[50];
        String[] nombres = new String[50];
        String[] apellidos = new String[50];
        double[] horasTrabajadas = new double[50];
        double[] sueldoXHora = new double[50];
        String identificacion, nombre, apellido;
        double horas, sueldo;
        double total = 0;
        
        System.out.println("Digite el numero de empleados: ");
        numeroEmpleados = objSc.nextInt();
        
        for(int i = 0; i < numeroEmpleados; i++){
            System.out.println("Digite el numero de identificacion del empleado: ");
            identificacion = objSc.next();
            System.out.println("Digite el nombre del empleado: ");
            nombre = objSc.next();
            System.out.println("Digite el apellido del empleado: ");
            apellido = objSc.next();
            System.out.println("Digite el numero de horas trabajadas del empleado: ");
            horas = objSc.nextDouble();
            System.out.println("Digite el sueldo por hora del empleado: ");
            sueldo = objSc.nextDouble();
            
            identificaciones[i] = identificacion;
            nombres[i] = nombre;
            apellidos[i] = apellido;
            horasTrabajadas[i] = horas;
            sueldoXHora[i] = sueldo;
        }
        
        for(int i = 0; i < numeroEmpleados; i++){
            total = total + horasTrabajadas[i] * sueldoXHora[i];
        }
        
        System.out.println("El valor de la Nomina es: " + total);
    }
}
