import 'dart:io';

void main(){
    Map<String, double> cesta = {};
    bool agregarMas = true;

    while(agregarMas){
        print('Ingrese el producto: (o "terminar" para finalizar)');
        String producto = stdin.readLineSync()!;

        if(producto == 'terminar'){
            agregarMas = false;
            continue;
        }

        print("Ingrese el precio del producto: ");
        double precio = double.parse(stdin.readLineSync()!);

        cesta[producto] = precio;

        print("Desea agregar otro producto? (si/no)");
        String respuesta = stdin.readLineSync()!;
        agregarMas = respuesta == 'si';
    }

    print('\nLista de la compra:');
    cesta.forEach((producto, precio) {
    print('$producto: ${precio.toStringAsFixed(2)}');
    });

    double total = cesta.values.reduce((a, b) => a + b);;
    print('Total: ${total.toStringAsFixed(2)}');
}

