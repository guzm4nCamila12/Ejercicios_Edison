class Empleado {
    String nombre;
    int edad;
    double salario;

    Empleado(this.nombre, this.edad, this.salario);

    String getNombre(){
        return nombre;
    }

    int getEdad(){
        return edad;
    }

    double getSalario(){
        return salario;
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

    @override
    String toString(){
        return 'Empleado (Nombre: $nombre, Edad: $edad, Salario: $salario)';
    }
}

class Programador extends Empleado {
    String lenguaje;

    Programador(String nombre, int edad, double salario, this.lenguaje) : super(nombre, edad, salario);

    String getLenguaje(){
        return lenguaje;
    }

    void setLenguaje(String lenguaje){
        this.lenguaje = lenguaje;
    }

    @override
    String toString(){
        return 'Programador (Nombre: $nombre, Edad: $edad, Salario: $salario, Lenguaje: $lenguaje)';
    }
}

void main(){
    Empleado empleado = Empleado('Juan Perez', 32, 1500000);
    print(empleado.toString());

    Programador programador = Programador('Camila Guzman', 18, 1000000, 'Java');
    print(programador.toString());
}