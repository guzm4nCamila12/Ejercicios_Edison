import 'dart:io';

void main() {
  List<int> notas = [1, 5, 3, 2, 4, 0];

  notas.sort((a, b) => b.compareTo(a));
  print("Notas ordenadas de mayor a menor: $notas");

  int mayor = notas[0];
  int menor = notas[notas.length - 1];
  
  print("Número mayor: $mayor");
  print("Número menor: $menor");

  double suma = 0;
  for (int nota in notas) {
    suma += nota;
  }
  double promedio = suma / notas.length;

  print("Promedio de las notas: $promedio");
}