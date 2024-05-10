import 'dart:io';

void main(){
    print("Ingrese cuanto vale x: ");
    int? x = int.parse(stdin.readLineSync()!);

    print("Ingrese cuanto vale y: ");
    int? y = int.parse(stdin.readLineSync()!);

    print("Numeros impares entre $x y $y :");

    for (int i = x; i <= y; i++) {
        if (i % 2 != 0) {
        print(i);
        }
    }
}