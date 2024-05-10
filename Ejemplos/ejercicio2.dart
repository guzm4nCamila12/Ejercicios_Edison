import 'dart:io';

void main(){
    print("Ingrese el precio de la compra: ");
    double? precio = double.parse(stdin.readLineSync()!);

    print("Ingrese el porcentaje de descuento: ");
    double? porcentaje = double.parse(stdin.readLineSync()!);

    double total = porcentaje / 100 *precio;
    double precio_final = total;

    print("El precio final con descuento es: " +precio_final.toString());
}