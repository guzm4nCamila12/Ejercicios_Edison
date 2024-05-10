import 'dart:io';

void main(){
    print("Ingrese el valor del pasaje: ");
    int? valor_pasaje = int.parse(stdin.readLineSync()!);

    print("Ingrese el numero de personas que se transportaron: ");
    int? num_personas = int.parse(stdin.readLineSync()!);

    int ganancia_producida = valor_pasaje * num_personas;

    print("La ganancia del colectivo es: " +ganancia_producida.toString());
}