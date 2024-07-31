import 'dart:io';
void main(){
    List<int> numeros = [];

    print("Ingrese los numeros ganadores de la loteria: ");
    for(int i=0; i<5; i++) {
        numeros.add(int.parse(stdin.readLineSync()!));
    }
    numeros.sort((a,b) => b.compareTo(a));
    print(numeros);

    print("Los numeros ganadores de mayor a menor son: ");
    numeros.forEach((x) => {
        print(x)
    });
}