import 'dart:io';

void main(){

    print('Ingrese la nota del taller1');
    double? taller1 = double.parse(stdin.readLineSync()!);

    print('Ingrese la nota del taller2');
    double? taller2 = double.parse(stdin.readLineSync()!);

    print('Ingrese la nota del examen');
    double? examen = double.parse(stdin.readLineSync()!);

    double notaFinal = (taller1*0.3)+(taller2*0.3)+(examen*0.4);

    print('su nota final es $notaFinal');
}