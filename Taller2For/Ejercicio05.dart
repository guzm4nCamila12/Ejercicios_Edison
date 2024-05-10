import 'dart:io';

void main(){
    Map<String, int> materias = {
        'Matematicas': 6,
        'Fisica': 4,
        'Quimica': 5
    };
    int total_creditos = 0;

    materias.forEach((key, value){
        print("$key tiene $value creditos");
        total_creditos = total_creditos +value;
    });

    print("El numero total de creditos del curso es $total_creditos");
}