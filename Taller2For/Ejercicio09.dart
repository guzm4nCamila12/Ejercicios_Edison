import 'dart:io';

void main(){
    Map<int, int> facturas = {1:10000, 2: 30000, 3: 50000};
    int suma =  0;

    print("Ingrese el valor de su eleccion: ");
    print("1: Añadir una nueva factura");
    print("2: Pagar una factura");
    print("3: Terminar");
    print(facturas);

    int opcion = int.parse(stdin.readLineSync()toString());

    switch (opcion) {
        case 1: 
        print("Añadir una nueva factura");
        print("Ingrese el número de la factura: ");
        int numFac = int.parse(stdin.readLineSync()toString()):
        print("Ingrese el valor de la factura: ");
        facturas [numFac] = int.parse(stdin.readLineSync()toString()):
        print(facturas);
        facturas.forEach((key, value){
            suma = suma + value;
        });

        print("El valor a pagar es: $suma");
        break;

        case 2:
        print("Pagar una factura");
        print("Ingrese el número de la factura que desea borrar: ");
        int numFac = int.parse(stdin.readLineSync()toString());
        facturas.remove(numFac);
        print(facturas);

        fcaturas.forEach((key, value){
            suma = suma + value;
        });

        print("El valor a pagar es: $suma");
        break;

        case 3: 
        print("Terminar");
        break;

        default:
        print("No existe esa opción.");
        break;
    }
}