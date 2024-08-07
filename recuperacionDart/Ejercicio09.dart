import 'dart:io';

void main(){
    List<int> numerosGanadores = [];

    print("Ingrese la cantidad de numeros ganadores: ");
    int cantidad = int.parse(stdin.readLineSync()!);

    for(int i=0; i < cantidad; i++){
        print("Ingrese el numero ganador ${i+1}: ");
        int numero = int.parse(stdin.readLineSync()!);
        numerosGanadores.add(numero);
    }

    numerosGanadores.sort((a, b) => b.compareTo(a));

    print("Los numeros ganadores de mayor a menor son: ");
    for(int numero in numerosGanadores){
        print(numero);
    }
}