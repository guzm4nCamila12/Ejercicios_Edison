class Empleado {
    String cedula;
    double sueldoBase;
    double pagoHorasExtras;
    int horasExtrasMes;
    bool casado;
    int numHijos;

    Empleado(this.cedula, this.sueldoBase, this.pagoHorasExtras, this.horasExtrasMes, this.casado, this.numHijos);

    double calcularHorasExtras(){
        return pagoHorasExtras * horasExtrasMes;
    }

    double calcularSueldoBruto(){
        return sueldoBase + calcularHorasExtras();
    }

    double calcularRetenciones(){
        double retencionBase = 0.1;
        double retencion = retencionBase;

        if(casado){
            retencion = retencion - 0.02;
        }

        retencion = retencion - 0.01 * numHijos;

        if(retencion < 0){
            retencion = 0;
        }  

        return retencion;
    }

    double calcularSueldoNeto(){
        double sueldoBruto = calcularSueldoBruto();
        double retenciones = calcularRetenciones();
        return sueldoBruto * (1 - retenciones);
    }

    String informacionBasica(){
        return 'Cedula: $cedula \n'
        'Casado: ${casado ? 'Sí' : 'No'}\n'
        'Numero de hijos: $numHijos';
    }

    @override
    String toString(){
        return informacionBasica() + '\n'
        'Sueldo base: $sueldoBase\n'
        'Pago por horas extras: $pagoHorasExtras\n'
        'Horas Extras: $horasExtrasMes\n'
        'Complemento por horas extras: ${calcularHorasExtras()}\n'
        'Sueldo bruto: ${calcularSueldoBruto()}\n'
        'Retenciones: ${calcularRetenciones() *100}%\n'
        'Sueldo neto: ${calcularSueldoNeto()}';
    }
}

void main(){
    Empleado empleado = Empleado("1054860603", 200000, 50000, 8, true, 1);

    print("Informacion basica del empleado: ");
    print(empleado.informacionBasica());

    print("Informacion completa del empleado: ");
    print(empleado);
}
