//Creamos la clase persona
class Persona {
    //creamos el metodo mover
    void mover(){
        print("La persona esta caminando");
    }

    //creamos otro metodo saltar
    void saltar(){
        print("La persona esta saltando");
    }
}

//creamos una clase y sobreescribimos la clase Persona
class Atleta extends Persona {
    @override
    void mover(){
        print("El atleta esta corriendo");
    }

    @override
    void saltar(){
    print("El atleta esta saltando alto");
    }
}

//Creamos el main y llamamos los metodos mover y saltar
void main(){
    Persona persona = Persona();
    persona.mover();
    persona.saltar();

    Atleta atleta = Atleta();
    atleta.mover();
    atleta.saltar();
}