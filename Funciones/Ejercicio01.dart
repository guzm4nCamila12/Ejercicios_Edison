void main(){

    var numeros = List.from ([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

    numeros.forEach((x) {
        int cuadrado = x * x;
        print('$x al cuadrado es igual a: $cuadrado');
    });
}