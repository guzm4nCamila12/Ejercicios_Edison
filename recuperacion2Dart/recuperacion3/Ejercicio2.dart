import 'dart:io';
void main(){
  List<int> loteria = [];

  print("ingrese la cantidad de numeros ganadores");
 int cantNumeros = int.parse(stdin.readLineSync()!);
 for ( var i = 0 ; i< cantNumeros  ; i++ ){
  print("ingrese la cantidad de numeros ganadores");
 int numeros = int.parse(stdin.readLineSync()!);
 loteria.add(numeros);
 }

  loteria.sort();
 print(loteria);
}