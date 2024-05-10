import 'dart:io';

void main(){
    int contraCorrecta = 1234;

    print("Digite la contraseña: ");
    int? clave = int.parse(stdin.readLineSync()!);

    while(clave == contraCorrecta){
        print("Bienvenido");
    }
}