import 'dart:io';

void main(){
    double descuento1 = 0.10;
    double descuento2 = 0.20;

    print("Ingresa el valor comprado del almacen: ");
    double? valor_comprado = double.parse(stdin.readLineSync()!);

    if(valor_comprado > 100000){
        double total = valor_comprado - descuento1;
        print("El total a pagar es: " +total.toString());
    } else if(valor_comprado > 2000000){
        double total = valor_comprado - descuento2;
        print("El total a pagar es: " +total.toString());
    } else{
        print("El total a pagar es: " +valor_comprado.toString());
    }
}