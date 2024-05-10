import 'dart:io';
void main(){
    List<String> materias = ["Matemáticas", "Fisica", "Quimica", "Historia", "Español"];
    List<String> materiasReprobadas = [];

    for(String materias in materias){
        print("Ingrese la nota para $materias: ");
        double nota = double.parse(stdin.readLineSync()!);

        if(nota < 3.0){
            materiasReprobadas.add(materias);
        }
    }

    print("\nMaterias que debe repetir: ");

    for(String materias in materiasReprobadas){
        print(materias);
    }
}