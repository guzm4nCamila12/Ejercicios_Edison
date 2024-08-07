import 'dart:io';

void main(){
  Map<int, int> facturas = {
    1: 20000,
    2: 30000,
    3: 25000
  };

  int suma = 0;

  while(true){
  print("Escoja una eleccion: ");
  print("1: Añadir una nueva factura");
  print("2: Pagar una existente");
  print("3: Terminar");
  int eleccion = int.parse(stdin.readLineSync()!);

    switch (eleccion){
      case 1:
      print("Añadir una nueva factura");
      print("Ingrese el numero de la factura que desea agregar: ");
      int numFac = int.parse(stdin.readLineSync()!);
      print("Ingrese el valor de la factura");
      facturas[numFac] = int.parse(stdin.readLineSync()!);

      suma = 0;
        facturas.forEach((key, value) {
          suma += value;
        });
        print("La cantidad pendiente de cobro es: $suma");
        break;
      

      case 2:
        print("Pagar una existente");
        print("Ingrese el numero de la factura que desea pagar: ");
        int numPagar = int.parse(stdin.readLineSync()!);

        if (facturas.containsKey(numPagar)) {
          int valorPagar = facturas[numPagar]!;
          facturas.remove(numPagar);

          suma -= valorPagar;
          print("Factura pagada correctamente.");
        } else {
          print("La factura no existe.");
        }
        print("La cantidad pendiente de cobro es: $suma");
        break;


      case 3:
        return;

      default:
        print("Opción inválida. Por favor ingrese 1, 2 o 3.");
        break;
    }
  }
}
