import 'package:flutter/material.dart'; //Librería con diseños

void main() {
  runApp(MyApp()); //runApp corre las configuraciones iniciales de la aplicación
}

class MyApp extends StatelessWidget{ //StatelessWidget es un Widget sin estado, son estaticos en la interfaz.
  @override
  Widget build(BuildContext context){ //Método build
    return MaterialApp( //Regresa un Widget
      Scaffold(
        body: const Center(child: Text('Hola mundo.') ,
      ),
    );
  }
}