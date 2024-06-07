class Informacion {
    int cedula;
    String nombres;
    int edad;
    String genero;

    Informacion(this.cedula, this.nombres, this.edad, this.genero);
}

class Aprendices extends Informacion{
    double calificacion;
    int faltas;

    Aprendices(int cedula, String nombres, int edad, String genero, this.calificacion): faltas = 0, super(cedula, nombres, edad, genero);

    void registrarFaltas(){
        faltas++;
    }

    bool aprobado(){
        return calificacion >= 6.0;
    }
}

class Instructor extends Informacion{
    String materiasAsignadas;
    int faltasInstru;

    Instructor(int cedula, String nombres, int edad, String genero, this.materiasAsignadas): faltasInstru = 0, super(cedula, nombres, edad, genero);

    void registrarFaltasInstru(){
        faltasInstru++;
    }

    bool disponible(){
        return faltasInstru <= 20;
    }
}

class Aula {
    int identificador;
    int maxAprendices;
    String asignatura;
    Instructor instructor;
    String cede;
    List<Aprendiz> aprendices;

    Aula(this.identificador, this.maxAprendices, this.asignatura, this.instructor, {this.cede = "sena"}): aprendices = []; 

    void agregarAprendices(Aprendiz aprendiz){
        if(aprendices.length < maxAprendices){
            aprendices.add(aprendiz);
        } else {
            print("El aula esta llena.");
        }
    }

    bool puedeDarClase(){
        int aprendicesPresentes = aprendices.length - aprendices.where((a) => a.faltas > maxFaltas()).length;
        int minAprendicesPresentes = (maxAprendices * 0.6);

        return instructor.disponible() && aprendicesPresentes >= minAprendicesPresentes;
    }

    int maxFaltas(){
        return (maxAprendices * 0.7);
    }

    void estadoAprobacion(){
        int hombresAprobados = aprendices.where((a) => a.aprobado() && a.genero == 'M').length;
        int mujeresAprobadas = aprendices.where((a) => a.aprobado() && a.genero == 'F').length;

        print("Aprendices aprobados: ");
        print("Hombres: $hombresAprobados");
        print("Mujeres: $mujeresAprobadas");
    }
}

void main(){
    Instructor instructor = Instructor(1002344, "Edison", 34, "M", "Programacion orientada a objetos");

    Aula aula = Aula(101, 25, "Programacion orientada a objetos", instructor, cede: "agropecuario");

    Aprendiz aprendiz1 = Aprendiz(124556, "Camila", 18, "F", 8.0);
    Aprendiz aprendiz2 = Aprendiz(1234, "Juan", 19, "M", 6.0);
    Aprendiz aprendiz3 = Aprendiz(23678, "Ximena", 18, "F", 9.0);
    Aprendiz aprendiz4 = Aprendiz(100933, "Santiago", 18, "M", 7.0);

    aula.agregarAprendices(aprendiz1);
    aula.agregarAprendices(aprendiz2);
    aula.agregarAprendices(aprendiz3);
    aula.agregarAprendices(aprendiz4);

    aprendiz2.registrarFaltas();
    aprendiz2.registrarFaltas();

    if(aula.puedeDarClase()){
        print("Se puede dar clases.");
    } else {
        print("No se puede dar clases.");
    }

    aula.estadoAprobacion();
}