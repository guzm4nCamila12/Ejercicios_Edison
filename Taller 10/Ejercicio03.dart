//explicar
import 'dart:io';

void main() {
  double sumaAlturas = 0;
  double alturaPromedio = 0;

  stdout.write("Ingrese la cantidad de alturas de personas a procesar: ");
  int? cantidadAltura = int.parse(stdin.readLineSync()!);

  int contador = 0;
  while (contador < cantidadAltura) {
    print("Ingrese la altura de la persona ${contador + 1}: ");
    double? altura = double.parse(stdin.readLineSync()!);

    sumaAlturas += altura;

    contador++;
  }

  if (n > 0) {
    alturaPromedio = sumaAlturas / n;
    print("La altura promedio de las personas es: $alturaPromedio");
  } else {
    print("No se ingresaron alturas.");
  }
}
