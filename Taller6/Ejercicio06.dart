import 'dart:io';

void main() {
    String usuarioCorrecto = 'usuario';
    String contrasenaCorrecta = 'contrasena';

    int intentos = 0;

    while (intentos < 3) {
        print('Ingrese su usuario:');
        String usuario = stdin.readLineSync()!;
        
        print('Ingrese su contraseña:');
        String contrasena = stdin.readLineSync()!;

        if (usuario == usuarioCorrecto && contrasena == contrasenaCorrecta) {
        print('¡Bienvenido $usuario!');
        return;
        } else {
        print('Usuario o contraseña incorrectos. Inténtalo de nuevo');
        intentos++;
        }
    }

    print('Ya no tiene intentos');
}
