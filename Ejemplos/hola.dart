import 'dart:io';
/*void main(){
    String cadena1= 'Esto es una cadena';
    String cadena2= "Esto es otra cadena";

    print("Cadena 1:" +cadena1+ "Cadena 2:" +cadena2);
}*/

/*void main(){
    int entero = 32;
    double decimal = 32.5;

    print("Entero: " +entero.toString()+ " Decimal: " +decimal.toString());
}*/

/*void main(){
    bool bandera = true;

    print(bandera);
}*/

/*void main(){
    dynamic name = "Dart";
    print(name);
}*/

/*void main(){
    dynamic a = 'abc';
    a = 123;
    a = true;
    print(a);
}*/

/*void main(){
    var a;
    a = 123;
    a = 'Hola';
    print(a);
}*/

/*void main(){
    var lista = [1, 2, 3, 4, 5];
    print(lista);
}*/

/*void main(){
    List numeros = [1, 2, 3, 4, 5];
    print(numeros);

    numeros.add(6);
    print(numeros);

    numeros.add("Hola");
    print(numeros);
}*/

/*void main(){
    List <int> numeros = [1, 2, 3, 4, 5];
    print(numeros);

    numeros.add("Hola");
    print(numeros);
}*/

/*void main(){
    List <int> numeros = [1, 2, 3, 4, 5];
    print(numeros);

    numeros[0] = 6;
    print(numeros);
}*/

/*void main(){
    Set grupo;
    grupo = Set.from(['Musica', 'Programación', 'Lógica']);
    print(grupo);
}*/

/*void main(){
    Set grupo;
    grupo = Set.from(['Musica', 'Programación', 'Lógica']);
    print(grupo);
    grupo.remove('Programación');
    print(grupo);
}*/

/*void main(){
    Map persona = {
        'nombre': 'Carlos',
        'edad': 32,
        'soltero': true
    };
    print(persona);
}*/

/*void main(){
    Map<String, dynamic> persona = {
        'nombre': 'Carlos',
        'edad': 32,
        'soltero': true
    };
    print(persona['nombre']);
}*/

/*void main(){
    print("Personas planilladas para comite");
    Map<int, String> personas = {1: 'Edison', 2: 'Paula', 9: "Esteban"};

    personas.addAll({8: 'David'});
    print(personas);
}*/

/*void main(){
    print("Ingrese su nombre: ");
    String nombre = stdin.readLineSync().toString();

    print("Hello, $nombre! \nBienevenidoa ADSO!!");
}*/

/*void main(){
    print("SUMANDO DOS NUMEROS");
    print('ESCRIBA EL PRIMER NUMERO: ');
    double numero1 = 
    double.parse(stdin.readLineSync().toString());
    print("ESCRIBA EL SEGUNDO NUMERO: ");
    double numero2 = 
    double.parse(stdin.readLineSync().toString());
    print("La suma de $numero1 más $numero2 es: ");
    print(numero1+numero2);
}*/

/*void main(){
    var year;
    print("Ingrese el año: ");
    double year = 
    double.parse(stdin.readLineSync().toString());
    if(year >= 2001){
        print('21st century');
    } else if(year >= 1901){
        print('20th century');
    }
}*/

/*void main(){
    int Vueltas = 1;
    while(Vueltas <= 5){
        print("Vuelta $Vueltas");
        Vueltas++;
    }
}*/

/*void main(){
    int cuentaReg = 5;
    do{
        print("Tiempo restante: $cuentaReg");
        cuentaReg--;
    } while (cuentaReg !=0);
}*/

/*void main(){
    for(int i=0; i<10; i++){
        print('Numero ${i + 1}');
    }
}*/

/*void main(){
    var lista = ['Uno', 'Dos', 'Tres'];
    print(lista);

    for(String x in lista){
        print(x);
    }
}*/

/*void main(){
    List<int> numeros = [1, 2, 3];
    for(int x in numeros){
        print(x);
    }
}*/

/*void main(){
    List<int> numeros = [1, 2, 3, 4, 5, 6];

    numeros.forEach((x){
        print("Accediendo al elemento $x");
    });
}*/

/*void main(){
    List<int> numeros = [1, 2, 3, 4, 5, 6];

    numeros.forEach((x) => print("Accediendo al elemento $x"));
}*/

/*void main(){
    Map<String, double> mapa = {
        'Base': 1.84,
        'Altura': 1.95,
        'Area': 2.10,
        'Volumen': 1.90
    };
    print(mapa);

    mapa.values.forEach((valor) => print("Valor del mapa: $valor"));

    mapa.keys.forEach((llave) => print("La clave $llave"));

    mapa.forEach((llave, valor) => print("La clave $llave tiene el valor $valor"));
}*/

/*void main(){
    Map<int, String> mapa = {1: 'Pedro', 2: 'Pablo', 3: 'Luis', 4: 'Brayan'};

    mapa.values.forEach((x) => print("Valor del mapa: $x"));

    mapa.keys.forEach((y) => print("La clave $y"));

    mapa.forEach((y, x) => print("La clave $y tiene el valor $x"));
}*/

/*void main(){
    Set conjunto;

    conjunto = Set.from(['Angel', 'Luis', 'Ana', 'Maria']);

    conjunto.forEach((x) => print("El elemento del conjunto: $x"));
}*/

/*void main(){
    print("Ingrese su sabor preferido: ");
    String sabor = stdin.readLineSync().toString();
    switch(sabor){
        case "vainilla":
        print("Su helado sera de vainilla.");
        break;

        case "chocolate":
        print("Su helado sera de chocolate");
        break;

        case "naranja":
        print("Su helado sera de naranja");
        break;

        default:
        print("No tenemos su sabor favorito.");
    }
}*/

//FUNCIONES 

/*void main(){
    String mensaje = saludar('Hola', 'Edison');
    print(mensaje);
}

String saludar(String texto, String nombre) {
    return '$texto $nombre';
}*/

/*void main(){
    String mensaje = saludar(nombre: 'Edison', texto: 'Hola');
    print(mensaje);
}

String saludar({String? texto, String? nombre}){
    return '$texto $nombre';
}*/

/*void main(){
    var numeros = List.from([1, 2, 3, 4, 5, 6]);
    numeros.forEach((item){
        print(item);
    });
}*/

void main(){
    var saborHelado = ['chocolate', 'vainilla', 'arequipe'];

    saborHelado.forEach((item) {
        print("Mi sabor es el de: $item");
    });
}