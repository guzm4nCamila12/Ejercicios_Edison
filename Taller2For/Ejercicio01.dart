import 'dart:io';

void main(){
var divisas = {
    'Euro' : '€',
    'Dollar' : '\$',
    'Yen' : '¥'};

    print("Ingrese una divisa: ");
    String? divisa = stdin.readLineSync();

    if(divisas.containsKey(divisa)){
        divisas.forEach((key, value){
            if(key == divisa){
                print("El simbolo de $key es $value");
            }
        });
    } else {
        print("La divisa no esta en el diccionario.");
    }
}