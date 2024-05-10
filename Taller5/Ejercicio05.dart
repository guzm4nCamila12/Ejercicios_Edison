import 'dart:io';

void main(){

    print('Ingrese un numero positivo');
    int? num1 = int.parse(stdin.readLineSync()!); 

    print('Ingrese otro numero positivo');
    int? num2 = int.parse(stdin.readLineSync()!); 

    int i=num1; 
    int suma=0; 

    while(i<=num2){
        suma=suma+i;
        i=i+1;
    }
    print(suma);
}
