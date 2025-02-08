
import 'dart:collection';

/*Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree
una lista de “empleados” y una función que calcule el salario total de todos los empleados y otra
que calcule el salario promedio.*/

class Empleado{

  final String nombre;
  final String puesto;
  final int salario;

  Empleado(this.nombre, this.puesto, this.salario);

}


void main(List<String> arguments){
  
  List<Empleado> lisEmp=[
  Empleado('Mario', 'barrendero', 1000),
  Empleado('Mario', 'barrendero', 500),
  Empleado('Mario', 'barrendero', 1000),
  Empleado('Mario', 'barrendero', 2000),
  Empleado('Mario', 'barrendero', 200)
  ];
  


  int salarioTotal = lisEmp.map((empleado) => empleado.salario).fold(0, (p, p1) => p+p1);

  print(salarioTotal);

  double salarioAvg = lisEmp.map((empleado) => empleado.salario).fold(0.0, (p, p1) => (p+p1)/(lisEmp.length));

  print(salarioAvg);
  

}



