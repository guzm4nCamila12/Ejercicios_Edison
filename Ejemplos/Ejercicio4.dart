import 'dart:io';

void main(){
    print("Ingrese el valor por hora: ");
    double? valor_hora = double.parse(stdin.readLineSync()!);

    print("Ingrese cuantas horas trabajo: ");
    int? horas_trabajadas = int.parse(stdin.readLineSync()!);

    double salario = valor_hora * horas_trabajadas;

    print("Su salario es: " +salario.toString());
}