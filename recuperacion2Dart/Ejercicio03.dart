import 'dart:io';

void main(){
  print("Ingrese el número de documento: ");
  int documento = int.parse(stdin.readLineSync()!);

  print("Ingrese su nombre: ");
  String nombre = stdin.readLineSync()!;
}