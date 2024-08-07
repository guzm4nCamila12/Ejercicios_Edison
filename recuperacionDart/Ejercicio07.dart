import 'dart:io';

void main (){
  Map<String, String> diccionario = {
    'carro': 'car',
    'hola': 'hello',
    'amarillo': 'yellow',
    'como estas': 'how are you'
  };

  print("Ingrese una palabra en español: ");
  String palabra = (stdin.readLineSync()!);

  print("Ingrese la traduccion de esa palabra: ");
  diccionario[palabra] = (stdin.readLineSync()!);

  print("ingrese la palabra en español que desea mirar: ");
  String p = (stdin.readLineSync()!);


  diccionario.forEach((espanol, ingles){
    if(diccionario[p] == diccionario[espanol]){
      print("La traduccion de $p es $ingles");
    }
  });
}