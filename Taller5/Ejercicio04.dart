import 'dart:io';

void main(){

    print('Ingrese un numero positivo');
    int? num = int.parse(stdin.readLineSync()!); 

    int i=0; 
    int suma=0;

    while(i<num){
    i=i+1;
    suma=suma+i;
    }
    print(suma);
    
}