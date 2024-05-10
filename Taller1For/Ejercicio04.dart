import 'dart:io';

void main(){
    List<int> listaN = [];

    print("Ingrese los numeros ganadores de la loteria: ");
    for(int i=0; i<5; i++) {
        listaN.add(int.parse(stdin.readLineSync()!));
    }
    listaN.sort();

    print("Los numeros ganadores de menor a mayor son: ");
    listaN.forEach((x) => {
        print(x)
    });
}