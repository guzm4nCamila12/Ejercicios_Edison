class Empleado {
    String nombre;
    int edad;
    double salario;
    int horasTrabajadas;
    int horasSemanales = 40;

    Empleado(this.nombre, this.edad, this.salario, this.horasTrabajadas);

    String getNombre(){
        return nombre;
    }

    int getEdad(){
        return edad;
    }

    double getSalario(){
        return salario;
    }

    int getHorasTrabajadas(){
        return horasTrabajadas;
    }

    void setNombre(String nombre){
        this.nombre = nombre;
    }

    void setEdad(int edad){
        this.edad = edad;
    }

    void setSalario(double salario){
        this.salario = salario;
    }

    void setHorasTrabajadas(int horasTrabajadas){
        this.horasTrabajadas = horasTrabajadas;
    }

    @override
    String toString(){
        return 'Empleado (Nombre: $nombre, Edad: $edad, Salario: $salario, Horas trabajadas: $horasTrabajadas)';
    }
}

class empleadoConHorasExtras extends Empleado {
    empleadoConHorasExtras(String nombre, int edad, double salario, int horasTrabajadas): super(nombre, edad, salario, horasTrabajadas);

    bool tieneHorasExtras(){
        return horasTrabajadas > horasSemanales;
    }

    int minutosExtras(){
        if(!tieneHorasExtras()){
            return 0;
        } 

        int horasExtras = horasTrabajadas - horasSemanales;
        return horasExtras * 60;
    }

    @override
    String toString(){
        return 'Empleado con horas extras: (Nombre: $nombre, Edad: $edad, Salario: $salario, Horas trabajadas: $horasTrabajadas, Minutos extras: ${minutosExtras()})';
    }
}

void main(){
    empleadoConHorasExtras empleado1 = empleadoConHorasExtras('Juan Lopez', 23, 500000, 43);
    print(empleado1.toString());
    print("Debe pagarse horas extras: ${empleado1.tieneHorasExtras()}");
    print("Minutos extras: ${empleado1.minutosExtras()}");

    empleadoConHorasExtras empleado2 = empleadoConHorasExtras('Oscar Perez', 34, 450000, 35);
    print(empleado2.toString());
    print("Debe pagarse horas extras: ${empleado2.tieneHorasExtras()}");
    print("Minutos extras: ${empleado2.minutosExtras()}");
}