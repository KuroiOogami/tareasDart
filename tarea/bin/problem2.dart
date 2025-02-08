import "dart:math";
/*Crea un programa que devuelva una lista con todos los elementos únicos
de otra lista.*/
void main(List<String> arguments) {
  
  final List arr1=[];
  

  for(int i=0; i<10; i++){
      int rand= Random().nextInt(10) + 60;
      arr1.add(rand);
  }
  print(arr1);
  print(arr1.toSet().toList());
  
}
