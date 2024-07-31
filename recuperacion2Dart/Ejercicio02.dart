import 'dart:io';
import 'dart:core';

void main(){
  Map <String, String> usuario1 = {
    "cedula": "",
    "nombre": "", 
  };

  print("Ingrese su cedula: ");
  String numCedula = stdin.readLineSync()!;

  print("Ingrese su nombre: ");
  String nombres = stdin.readLineSync()!;

  usuario1; {
    usuario1[cedula] = numCedula;
    usuario1[nombre] = nombres;
  }

  print(usuario1);

  print("Ingrese el documento de un usuario: ");
  int docum = int.parse(stdin.readLineSync()!);
  usuario1.forEach((cedula, nombre) {
    if(usuario1[cedula] == usuario1[docum]!){
      print("El nombre es: $nombre y su documento: $cedula");
    }
  });
}