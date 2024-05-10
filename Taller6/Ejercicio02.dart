import 'dart:io';

void main(){

    print('Ingrese el total del importe');
    double? importe = double.parse(stdin.readLineSync()!);

    print('Ingrese el mes de compra');
    String? mes = stdin.readLineSync()!;

    if(mes == 'enero' || mes == 'febrero' || mes == 'marzo'){
        double total = importe - (importe * 0.15);
        print('El total a cobrar en $mes es $total');
    }else if(mes == 'abril' || mes == 'mayo' || mes == 'junio'){
        double total = importe - (importe * 0.20);
        print('El total a cobrar en $mes es $total');
    }else{
        print('El total a cobrar en $mes es $importe');
    }
}