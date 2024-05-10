class Aprendices {
  String cedula;
  String nombres;
  int edad;
  String sexo;
  int calificacion;

  Aprendices(this.cedula, this.nombres, this.edad, this.sexo, this.calificacion){
    this.cedula = cedula;
    this.nombres = nombres;
    this.edad = edad;
    this.sexo = sexo;
    this.calificacion = calificacion;
  }
}

class Instructores {
  String cedula;
  String nombres;
  int edad;
  String sexo;
  String materias;

  Instructores(this.cedula, this.nombres, this.edad, this.sexo, this.materias){
    this.cedula = cedula;
    this.nombres = nombres;
    this.edad = edad;
    this.sexo = sexo;
    this.materias = materias;
  }
}

void main(){
  final Oscar = new Instructores("1001", "Oscar", 25, "masculino", "Programacion orientada a objetos");
}