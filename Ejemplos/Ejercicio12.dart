import 'dart:io';

void main(){
    print("Ingrese el valor por hora: ");
    double? valor_hora = double.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del empleado: ");
    String? nombre = stdin.readLineSync();

    print("Ingrese la antiguedad del empleado (en años): ");
    int? antiguedad = int.parse(stdin.readLineSync()!);

    print("Ingrese la cantidad de horas trabajadas en el mes: ");
    int? horas_trabajadas = int.parse(stdin.readLineSync()!);

    double total_bruto = (valor_hora * horas_trabajadas) + (antiguedad * 30000);
    double descuentos = total_bruto * 0.13;
    double total_neto = total_bruto - descuentos;

    print("Nombre: " +nombre.toString());
    print("Antiguedad: " +antiguedad.toString());
    print("Valor por hora: \$" +valor_hora.toString());
    print("Total a cobrar en bruto: \$" +total_bruto.toString());
    print("Total de descuentos: \$" +descuentos.toString());
    print("Valor neto a cobrar: \$" +total_neto.toString());
}