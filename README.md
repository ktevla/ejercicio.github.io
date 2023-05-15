# NOMINA
Desarrollo de una aplicación que necesita un coordinador de nomina de una empresa, para realizar el proceso de pago de nomina y poder tener el pago oportuno a sus empleados sin retrasos ni complicaciones. Esta empresa requiere sistematizar su proceso de pago de nomina actual. Como informacion se requiere: identificacion, nombre,apellidos,horas trabajadas y sueldo del empleado.

## Aclaraciones:

- Esta aplicacion calculara la nomina de cada empleado mensualmente
- Para manejar una simplicidad no se contemplara almacenamiento de datos
- No se realiza validacion, ni se verifica calidad en los datos ingresados.

### Análisis del Ejercicio:
_Aproximación Plantilla Historia de Usuario:_

![alt text](https://github.com/ktevla/ejercicio.github.io/blob/main/Historia_1.png)
![alt text](https://github.com/ktevla/ejercicio.github.io/blob/main/Historia_2.png)
![alt text](https://github.com/ktevla/ejercicio.github.io/blob/main/Historia_3.png)

### _Aproximación Caso de Uso:_                                                            
                                                                                  
![alt text](https://github.com/ktevla/ejercicio.github.io/blob/main/Caso%20de%20uso%20(2).png) 

### _Aproximación Diagrama de Flujo:_ 

![alt text](https://github.com/ktevla/ejercicio.github.io/blob/main/Diagrama%20de%20Flujo.png)

### Aproximación Seudocódigo:

- Inicio
  - Caracteres: identificaciones [50], nombres [50], apellidos [50]
  - Real: horasTrabajadas [50], sueldoXHora [50]
  - Caracteres: identificacion, nombre, apellido
  - Entero: numeroEmpleados, i
  - Real: horas, sueldo, total<- 0
  - Imprimir: 'Digite el numero de empleados:'
  - Asignar: numeroEmpleados
  - Para  i=0 hasta numeroEmpleados - 1, 1
  - Imprimir: 'Digite la identificacion del empleado:'
  - Asignar: identificacion
  - Imprimir: 'Digite el nombre del empleado:'
  - Asignar: nombre
  - Imprimir: 'Digite el apellido del empleado:'
  - Asignar: apellido
  - Imprimir: 'Digite el numero de horas trabajadas del empleado:'
  - Asignar: horas
  - Imprimir: 'Digite el sueldo por hora del empleado:'
  - Asignar: sueldo
  - identificaciones[i] <- identificacion
  - nombres[i] <- identificacion
  - identificaciones[i] <- nombre
  - apellidos[i] <- apellido
  - horasTrabajadas[i] <- horas
  - sueldoXHora[i] <- sueldo
  - finPara
  - Para i=0 hasta numeroEmpleados -1, 1
  - total <-
  - total + (horasTrabajadas[i])sueldoXHora[i]
  - finPara
  - Imprimir: 'El total es: + total
-Fin


                                                                                  






