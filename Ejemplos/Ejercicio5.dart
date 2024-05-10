import 'dart:io';

void main(){
    print("Ingrese el valor de catetoA: ");
    int? catetoA = int.parse(stdin.readLineSync()!);

    print("Ingrese el valor de catetoB: ");
    int? catetoB = int.parse(stdin.readLineSync()!);

    int hipotenusa = (catetoA*catetoA) + (catetoB*catetoB);

    print("La hipotenusa del triangulo es: " +hipotenusa.toString());
}