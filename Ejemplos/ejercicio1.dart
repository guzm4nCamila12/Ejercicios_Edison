import 'dart:io';

void main(){
    print("Ingrese las millas: ");
    int? millas = int.parse(stdin.readLineSync()!);

    int metros = millas*1248;

    print("Los metros son: " +metros.toString());
}