import 'dart:io';
void main(){
    List<String> abecedario = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
    List<String> abc = [];
    int posicion = 1;

    for(String x in abecedario){
        if(posicion %3 != 0){
            abc.add(x);
        }
        posicion++;
    }

    abc.forEach((x) => {
        print(x)
    });
}
