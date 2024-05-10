//explicar
import 'dart:io';

void main() {
    print('ingrese el primer número:');
    int num1 = int.parse(stdin.readLineSync()!);
    
    print('ingrese el segundo número:');
    int num2 = int.parse(stdin.readLineSync()!);
    
    print('ingrese el tercer número:');
    int num3 = int.parse(stdin.readLineSync()!);

    List<int> numeros = [num1, num2, num3];

    numeros.sort();

    print('Los números ordenados de menor a mayor son: ${numeros[0]}, ${numeros[1]}, ${numeros[2]}');
}
