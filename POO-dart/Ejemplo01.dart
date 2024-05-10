class Moto {
  String marca;
  String color;

  //El constructor tiene el mismo nombre de la clase

  Moto(this.marca, this.color) {
    this.marca = marca;
    this.color = color;
  }

  //Metodo de la clase Moto
  void caracteristicas() {
    print("La marca de mi moto es: $marca");
    print("El color de mi moto es: $color");
  }
}

void main() {
  final mt09 = new Moto("Yamaha", "Negra");
  mt09.caracteristicas();

  final z1000  = new Moto("Kawasaki", "Verde");
  z1000.caracteristicas();
} 