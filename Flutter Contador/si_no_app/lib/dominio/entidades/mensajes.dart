enum DeQuien {mio,ella} //Enumeracion para saber de quien es el mensaje 

class Mensaje {
  final String text; //Texto que enviara
  final String? imageUrl; //Meme que enviara
  final DeQuien deQuien;

  Mensaje({
    required this.text,
    this.imageUrl,
    required this.deQuien
  }); //Constructor
}