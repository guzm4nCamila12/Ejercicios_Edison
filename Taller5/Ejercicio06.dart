import 'dart:io';

void main() {
    int contra;

    do {
        print('Por favor, introduce la contraseña:');
        contra = int.parse(stdin.readLineSync()!);
    } while (contra != 1234);

    print('Bienvenido');
}
