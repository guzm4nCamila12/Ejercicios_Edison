import 'dart:io';

void main(){
    print("Ingrese el primer numero: ");
    int? num1 = int.parse(stdin.readLineSync()!);

    print("Ingrese el segundo numero: ");
    int? num2 = int.parse(stdin.readLineSync()!);

    int i = num1;
    int suma = 0;

    while(i<=num2){
        suma = suma + i;
        i = i + 1;
    }
    print("La suma de los numeros es: $suma");
}