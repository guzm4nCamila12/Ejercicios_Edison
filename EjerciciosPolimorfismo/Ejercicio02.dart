//Creamos el main y creamos instancias de tierra y hierro e iniciamos el metodo minar
void main(){
    Tierra bloqueTierra = new Tierra();
    Hierro bloqueHierro = new Hierro();

    bloqueTierra.minar(18);
    bloqueTierra.minar(21);
    bloqueHierro.minar(30);
    bloqueHierro.minar(60);
}

//Creamos la clase bloque con el metodo minar
class Bloque {
    void minar(int poderDePico){
        print("Bloque minado correctamente");
    }
}

//creamos el mixin y el metodo soltarMineral
mixin soltarMineralMixin {
    void soltarMineral(){
        print("Mineral por defecto solatdo");
    }
}

//creamos la clase Tierra que es heredada de Bloque
class Tierra extends Bloque {
    @override
    void minar(int poderDePico) {
        if(poderDePico > 20){
            print("Bloque minado correctamente");
        }
        else {
            print("Error, poder de pico insuficiente");
        }
    }
}

//Creamos la clase Hierro que se hereda de Bloque y toma el metodo Mixin
class Hierro extends Bloque with soltarMineralMixin {
    @override 
    void soltarMineral(){
        print("Mineral de hierro soltado");
    }

    @override
    void minar(int poderDePico){
        if(poderDePico > 50){
            print("Bloque minado correctamente");
            soltarMineral();
        }
        else {
            print("Error, poder de pico insuficiente");
        }
    }
}