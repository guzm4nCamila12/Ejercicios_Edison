import 'dart:io';

void main() {

        print('ingrese el porcentaje de mujeres:');
        double porcentajeM = double.parse(stdin.readLineSync()!);

        print('ingrese el porcentaje de hombres:');
        double porcentajeH = double.parse(stdin.readLineSync()!);

        if(porcentajeH > porcentajeM){
            print('Mayor cantidad de hombres, porcentaje $porcentajeH:');
        }else if(porcentajeH < porcentajeM){
            print('Mayor cantidad de mujeres, porcentaje $porcentajeM:');
        }else{
            print('los porcentajes son iguales');
        }
}
