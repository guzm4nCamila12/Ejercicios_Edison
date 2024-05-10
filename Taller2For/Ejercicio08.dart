import 'dart:io';
void main(){
    Map<String, String> diccionario = {
        'amarillo': 'yellow',
        'hola': 'hello',
        'azul': 'blue',
        'carro': 'car'
    };

    print("Ingrese la palabra en español que desea ingresar: ");
    String clave = stdin.readLineSync().toString();

    print("Ingrese la palabra en ingles que corresponde: ");
    diccionario [clave] = stdin.readLineSync().toString();

    print("Ingrese la palabra que desea traducir: ");
    String palabra = stdin.readLineSync().toString();

    diccionario.forEach((espanol, ingles){
        if(diccionario[palabra] == diccionario[espanol]){
            print("La traduccion de $espanol es $ingles");
        }
    });
}