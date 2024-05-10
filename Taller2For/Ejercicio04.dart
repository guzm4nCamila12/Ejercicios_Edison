import 'dart:io';

void main() {
  Map<String, dynamic> fecha = {};

  print('Ingrese el dia de la fecha: ');
  int dia = int.parse(stdin.readLineSync()!);

  print('Ingrese el mes de la fecha: ');
  String mes = stdin.readLineSync()!;

  print('Ingrese el año de la fecha: ');
  int anio = int.parse(stdin.readLineSync()!);

  fecha['Dia'] = dia;
  fecha['Mes'] = mes;
  fecha['Año'] = anio;

  print('$dia de $mes de $anio');
}