import 'dart:io';

void main() {
  Map<String, dynamic> datos = {};

  print('Ingrese su nombre: ');
  String nombre = stdin.readLineSync()!;

  print('Ingrese su edad: ');
  int edad = int.parse(stdin.readLineSync()!);

  print('Ingrese su dirección: ');
  String direccion = stdin.readLineSync()!;

  print('Ingrese su número de teléfono: ');
  String telefono = stdin.readLineSync()!;

  datos['Nombre'] = nombre;
  datos['Edad'] = edad;
  datos['Dirección'] = direccion;
  datos['Teléfono'] = telefono;

  print('$nombre tiene $edad años, vive en $direccion y su numero de telefono es: $telefono');
}