
/**
 * Write a description of class Nomina here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
import java.util.Scanner;
public class Nomina
{
    public void main (String[] args){
        Scanner objsc = new Scanner(System.in);
        EmpleadosPOO[] losempleados = new EmpleadosPOO[50];
        int numEmpleados = 0;
        String identificacion, nombre, apellido;
        double horas, sueldo, total = 0;
        System.out.println("Digite la cantidad de empleados: ");
        numEmpleados = objsc.nextInt();
        for (int i = 0; i < numEmpleados; i++){
            System.out.println("Digite la identificacion del empleado: ");
            identificacion = objsc.next();
            System.out.println("Digite el nombre del empleado: ");
            nombre = objsc.next();
            System.out.println("Digite el apellido del empleado: ");
            apellido = objsc.next();
            System.out.println("Digite la cantidad de horas trabajadas del empleado: ");
            horas = objsc.nextDouble();
            System.out.println("Digite el sueldo por hora del empleado: ");
            sueldo = objsc.nextDouble();
            EmpleadosPOO unempleado = new EmpleadosPOO();
            unempleado.identificacion = identificacion;
            unempleado.nombre = nombre;
            unempleado.apellido = apellido;
            unempleado.horas = horas;
            unempleado.sueldo = sueldo;
            losempleados[i] = unempleado;
            
            total = total + losempleados[i].horas*losempleados[i].sueldo;
  
        }
        System.out.println("El valor de la nomina es: " + total);
    }
}
