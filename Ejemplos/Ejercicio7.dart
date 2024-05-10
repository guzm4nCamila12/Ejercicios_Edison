import 'dart:io';

void main(){
    print("Ingrese la distancia que va a recorrer: ");
    int? distacia = int.parse(stdin.readLineSync()!);

    print("Ingrese los dias de estancia: ");
    int? dias_estancia = int.parse(stdin.readLineSync()!);

    int pasaje_avion = distacia * dias_estancia;

    print("El pasaje de avion es: " +pasaje_avion.toString());
}