//explicar
import 'dart:io';

void main() {
    print('Ingrese las horas trabajadas:');
    int horasTrabajadas = int.parse(stdin.readLineSync()!);
    
    print('Ingrese el valor por hora:');
    double valorPorHora = double.parse(stdin.readLineSync()!);

    double salario;

    if (horasTrabajadas > 40) {
        int horasExtras = horasTrabajadas - 40;
        salario = (40 * valorPorHora) + horasExtras * (valorPorHora * 1.50);
    } else {
        salario = horasTrabajadas * valorPorHora;
    }

    print('El salario total es: ${salario}');
}
