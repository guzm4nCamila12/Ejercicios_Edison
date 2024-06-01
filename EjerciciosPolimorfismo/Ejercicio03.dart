//Creamos el main y creamos las instancias y llamamos los metodos
void main() {
    Experimentado experimentado = new Experimentado();
    Novato novato = new Novato();

    experimentado.tocarFlauta();
    experimentado.tocarPiano();
    novato.tocarPiano();
    novato.tocarFlauta();
}

//Creamos la clase abstracta y los metodos tocarPiano y tocarFlauta
abstract class Musico {
    void tocarInstrumento(String nombreInstrumento);

    void tocarPiano() {
        tocarInstrumento("Piano");
    }

    void tocarFlauta() {
        tocarInstrumento("Flauta");
    }
}

//creamos la clase experimentado y se hereda de Musico 
class Experimentado extends Musico {
    @override
    void tocarInstrumento(String nombreInstrumento){
        print("Toca el $nombreInstrumento profesionalmente");
    }
}

//creamos la clase Novato y se hereda de Musico
class Novato extends Musico {
    @override
    void tocarInstrumento(String nombreInstrumento){
        print("Toca el $nombreInstrumento como un novato");
    }
}