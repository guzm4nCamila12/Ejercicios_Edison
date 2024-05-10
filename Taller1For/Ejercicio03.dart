import 'dart:io';
void main(){
    List<String> materias = ["Matemáticas", "Fisica", "Quimica", "Historia", "Español"];
    List<int> nota = [];

    materias.forEach((x){
        print("Ingrese la nota de $x");
        nota.add(int.parse(stdin.readLineSync()!));
    });

    print("Sus notas son: ");

    for(int i=0; i<materias.length; i++){
        print(materias[i] +": "+ nota[i].toString());
    }
}