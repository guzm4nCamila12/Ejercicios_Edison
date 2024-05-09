class Cuenta{

    int numCuenta; 
    int numDocumentoCliente; 
    int saldoActual; 
    int interesAnual; 

    Cuenta(this.numCuenta,this.numDocumentoCliente,this.saldoActual, this.interesAnual){

        this.numCuenta = numCuenta;
        this.numDocumentoCliente = numDocumentoCliente;
        this.saldoActual = saldoActual;
        this.interesAnual = interesAnual;

    }
    //permitira ingresar una cantidad en la cuenta
    void Ingresar(int cantidadAIngresar){
        saldoActual += cantidadAIngresar; 
        print("Se han ingresado $cantidadAIngresar su saldo actual es: $saldoActual");
    }

    //permitirá sacar una cantidad de la cuenta (si hay saldo). 
    void Retirar(int cantidadARetirar){
        saldoActual -= cantidadARetirar; 
        print("Se han retirado $cantidadARetirar su saldo actual es: $saldoActual");
    }

    // que nos permita mostrar todos los datos de la cuenta. 
    void Mostrar(){
        print("Su saldo es $saldoActual");
    }
}

void main(){

    final camila = new Cuenta(1032,1111,0,15);
    camila.Ingresar(5000); 
    camila.Retirar(2000); 
    camila.Mostrar(); 

}