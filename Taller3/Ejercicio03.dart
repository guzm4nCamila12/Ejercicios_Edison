class Empleado {
    String nombre;
    int minutosTrabajados;

    Empleado(this.nombre, this.minutosTrabajados);

    void minutosTrabajadosExtras(){
        if (minutosTrabajados > 480) {
            var minutosExtras = minutosTrabajados - 480;
            print('${nombre} trabajo ${minutosExtras} minutos extras');
        } else {
            print('${nombre} no trabajó horas extras.');
        }
    }
}

void main() {
    var empleado = Empleado('Camilo', 880); 
    empleado.minutosTrabajadosExtras();
}