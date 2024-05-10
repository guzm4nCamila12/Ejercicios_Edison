import 'dart:io';

void main() {
    int num1 = 1, num2 = 1;

    while (num1 != 0 || num2 != 0) {
        print('ingrese el primer numero:');
        num1 = int.parse(stdin.readLineSync()!);

        print('ingrese el segundo numero:');
        num2 = int.parse(stdin.readLineSync()!);

        int suma = num1 + num2;
        print('La suma de $num1 y $num2 es: $suma');
    }

    print('Ambos numeros introducidos son 0, el programa ha terminado.');
}
