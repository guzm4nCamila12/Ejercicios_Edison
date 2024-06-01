//Creamos el main y creamos las instancias carro y avion y llamamos el metodo arrancar
void main(){
    Terrestre carro = new Terrestre();
    Aereo avion = new Aereo();

    carro.arrancar();
    avion.arrancar();
}

//Creamos la clase super Vehiculo y el metodo arrancar
class Vehiculo{
    void arrancar(){
        print("El vehiculo arranca");
    }
}

//Creamos la clase Terrestre que hereda Vehiculo
class Terrestre extends Vehiculo{
    @override
    void arrancar(){
        print("El vehiculo se mueve por la tierra");
    }
}

//Creamos la clase Aereo que hereda Vehiculo
class Aereo extends Vehiculo{
    @override
    void arrancar(){
        print("El vehiculo toma vuelo")
    }
}