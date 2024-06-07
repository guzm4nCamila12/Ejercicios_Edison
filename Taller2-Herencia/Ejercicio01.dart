class Precio {
    double monto;

    Precio(this.monto);

    double getMonto(){
        return monto;
    }

    void setMonto(double monto){
        this.monto = monto;
    }

    @override 
    String toString(){
        return 'Precio (Monto: $monto)';
    }
}

class Factura extends Precio {
    String emisor;
    String cliente;

    Factura(double monto, this.emisor, this.cliente) : super(monto);

    void imprimirFactura(){
        print("Factura: ");
        print("Emisor: $emisor");
        print("Cliente: $cliente");
        print("Monto: $monto");
    }

    @override
    String toString(){
        return 'Factura (Emisor: $emisor, Cliente: $cliente, Monto: $monto)';
    }
}

void main(){
    Factura factura = Factura(550000, 'D1', 'camila');
    factura.imprimirFactura();
    print(factura.toString());
}