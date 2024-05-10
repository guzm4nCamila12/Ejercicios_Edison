import 'dart:io';

void main() {
  stdout.write('Ingrese el número de pasajeros: ');
  int numeroPasajeros = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor del pasaje: ');
  int valorPasaje = int.parse(stdin.readLineSync()!);
  
  double porcentajeGanancia = 0.0;

  if (numeroPasajeros < 300) {
    porcentajeGanancia = 0.0;
  } 
  else if (numeroPasajeros <= 500) {
    porcentajeGanancia = 0.20;
  } 
  else {
    porcentajeGanancia = 0.30;
  }

  double gananciaConductor = numeroPasajeros * valorPasaje * porcentajeGanancia;

  print('El conductor debe entregar \$${gananciaConductor.toStringAsFixed(2)} al dueño del bus.');
}
