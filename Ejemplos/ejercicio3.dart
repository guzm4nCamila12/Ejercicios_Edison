import 'dart:io';

void main(){
    print("Ingrese el primer numero: ");
    int? numero1 = int.parse(stdin.readLineSync()!);

    print("Ingrese el segundo numero: ");
    int? numero2 = int.parse(stdin.readLineSync()!);

    int suma = numero1 + numero2;
    int resta = numero1 - numero2;
    int multiplicacion = numero1 * numero2;

    print("La suma de " +numero1+ " y " +numero2+ " es:" +suma.toString());
    print("La resta de " +numero1+ " y " +numero2+ " es: " +resta.toString());
    print("La multiplicacion de " +numero1+ " y " +numero2+ " es: " +multiplicacion.toString());
}