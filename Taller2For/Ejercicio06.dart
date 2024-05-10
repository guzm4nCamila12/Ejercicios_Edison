import 'dart:io';

void main() {
    Map<String, dynamic> datos = {};

    print('Ingrese su nombre: ');
    String nombre = stdin.readLineSync()!;

    print('Ingrese su edad: ');
    int edad = int.parse(stdin.readLineSync()!);

    print("Ingrese su sexo: ");
    String sexo = stdin.readLineSync()!;

    print('Ingrese su dirección: ');
    String direccion = stdin.readLineSync()!;

    print('Ingrese su número de teléfono: ');
    String telefono = stdin.readLineSync()!;

    print("Ingrese su correo electronico: ");
    String correo = stdin.readLineSync()!;

    datos['Nombre'] = nombre;
    datos['Edad'] = edad;
    datos['Sexo'] = sexo;
    datos['Dirección'] = direccion;
    datos['Teléfono'] = telefono;
    datos['Correo'] = correo;

    datos.forEach((key, value){
        print('$key: $value');
    });
}