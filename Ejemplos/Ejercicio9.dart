import 'dart:io';

void main(){

    print("Ingrese el numero de empleados: ");
    int? num_empleados = int.parse(stdin.readLineSync()!);

    print("Ingrese las horas trabajadas: ");
    int? horas_trabajadas = int.parse(stdin.readLineSync()!);

    print("Ingrese el valor por hora: ");
    int? valor_hora = int.parse(stdin.readLineSync()!);

    double salario = horas_trabajadas * valor_hora;
    double subsidioTransporte = 0;

    if(num_empleados > 50){
        subsidioTransporte = 0.20 * salario;

        double salarioCompleto = salario +subsidioTransporte;
        double total = num_empleados * salarioCompleto;
        print("La nomina total de la empresa es: " +total.toString());
        
    } else{
        double total = salario * num_empleados;
        print("La nomina total de la empresa es: " +total.toString());
    }
}