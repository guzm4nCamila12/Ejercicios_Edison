import 'dart:io';

void main(){
    Map<String, double> frutas = {
        "platano": 1.35,
        "manzana": 0.80,
        "pera": 0.85,
        "naranja": 0.70,
    };

    print("Ingrese una fruta: ");
    String fruta = stdin.readLineSync()!;

    print("ingrese la cantidad en kilos: ");
    int num_kilos = int.parse(stdin.readLineSync()!);

    if(frutas.containsKey(fruta) && num_kilos != null){
        frutas.forEach((key, value){
            if(key == fruta){
                double precioTotal = value * num_kilos;
                print("El precio de $num_kilos kilos de $fruta es de: ${precioTotal.toStringAsFixed(2)}");
            }
        });
    } else {
        print("La fruta no se encuentra en el diccionario.");
    }
}
   
