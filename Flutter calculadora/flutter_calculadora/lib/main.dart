// import 'package:flutter/material.dart';
// import 'package:flutter_calculadora/config/temas/app_temas.dart';

// void main() {
//   runApp(const AppLayout());
// }

// class AppLayout extends StatelessWidget {
//   const AppLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Container(
//             color: Colors.black,
//             height: double.infinity,
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaciado entre los hijos
//               children: [
//                 // Pantalla de la calculadora
//                 Expanded(
//                   flex: 4,
//                   child: Container(
//                     color: Colors.black,
//                     width: double.infinity,
//                     height: double.infinity,
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: const Align(
//                       alignment: Alignment.bottomRight, // Alinea el texto a la derecha
//                       child: Text(
//                         "3x2",
//                         style: TextStyle(fontSize: 65, color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Botones de la calculadora
//                 Expanded(
//                   flex: 7,
//                   child: Container(
//                     color: Colors.black,
//                     padding: const EdgeInsets.all(10),
//                     child: GridView.count(
//                       crossAxisCount: 4, // 4 columnas de botones
//                       crossAxisSpacing: 20, // Espacio entre columnas
//                       mainAxisSpacing: 16, // Espacio entre filas
//                       shrinkWrap: true, // Envuelve el contenido
//                       children: List.generate(20, (index) {
//                         return Container(
//                           decoration: BoxDecoration(
//                             color: colors[index], // Color del botón
//                             borderRadius: const BorderRadius.all(Radius.circular(255)), // Bordes redondeados
//                           ),
//                           child: Center(child: controllers[index]), // Centra el contenido del botón
//                         );
//                       }),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
//import 'package:math_expressions/math_expressions.dart';
import 'package:flutter_calculadora/config/temas/app_temas.dart'; // Asegúrate de que la ruta sea correcta

void main() {
  runApp(const AppLayout());
}

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  String _expression = ''; // Expresión ingresada por el usuario
  String _result = ''; // Resultado del cálculo

  // Maneja la lógica cuando se presiona un botón
  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        _expression = '';
        _result = '';
      } else if (buttonText == "⌫") {
        if (_expression.isNotEmpty) {
          _expression = _expression.substring(0, _expression.length - 1);
        }
      } else if (buttonText == "=") {
        _evaluateExpression();
      } else if (buttonText == "÷") {
        _expression += '/';
      } else if (buttonText == "X") {
        _expression += '*';
      } else {
        _expression += buttonText;
      }
    });
  }

  // Evalúa la expresión matemática usando math_expressions
  void _evaluateExpression() {
    try {
      String finalExpression = _expression.replaceAll('÷', '/').replaceAll('X', '*');

      // Parser p = Parser();
      // Expression exp = p.parse(finalExpression);
      // ContextModel cm = ContextModel();
      // double eval = exp.evaluate(EvaluationType.REAL, cm);

      // _result = eval.toString();
    } catch (e) {
      _result = 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Pantalla de la calculadora
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        child: Text(
                          _expression,
                          style: const TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        child: Text(
                          _result,
                          style: const TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Botones de la calculadora
              Expanded(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: controllers.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // primary: colors[index],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () => _onButtonPressed(controllers[index]),
                        child: _buildButtonContent(controllers[index]),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Construye el contenido del botón basado en su texto
  Widget _buildButtonContent(String buttonText) {
    if (buttonText == "⌫") {
      return const Icon(Icons.backspace_rounded, color: Colors.white, size: 28);
    } else {
      return Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: _getFontSize(buttonText),
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }

  // Determina el tamaño de la fuente basado en el texto del botón
  double _getFontSize(String buttonText) {
    if (buttonText == "0" || buttonText == "=" || buttonText == ".") {
      return 24;
    }
    return 28;
  }
}
