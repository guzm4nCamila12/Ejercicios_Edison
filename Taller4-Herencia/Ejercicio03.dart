class Libro {
    String titulo;
    String categoria;
    String tipo;

    Libro(this.titulo, this.categoria, this.tipo);

    @override 
    String toString(){
        return "Titulo: $titulo, Categoria: $categoria, Tipo: $tipo"; 
    }
}

class ListaLibros {
    List<Libro> libros = [];

    //conocer el numero de libros en la lista
    int get numLibros => libros.length;


    void insertarLibro(Libro libro){
        int index = libros.indexWhere((1) => 1.titulo.compareTo(libro.titulo) > 0);
        if(index == -1){
            libros.add(libro);
        } else {
            libros.insert(index, libro);
        }
    }

    void eliminarLibro(int posicion){
        if(posicion >=0 && posicion < libros.length){
            libros.removeAt(posicion);
        } else {
            print("Posicion invalida.");
        }
    }

    void obtenerLibro(int posicion){
        if(posicion >=0 && posicion < libros.length){
            return libros[posicion];
        } else {
            print("Posicion invalida.");
            return null;
        }
    }

    void buscarLibro(String parteTitulo){
        parteTitulo = parteTitulo.toLowerCase();
        for(int i=0; i<libros.length; i++){
            if(libros[i].titulo.toLowerCase.contains(parteTitulo)){
                return i;
            } 
        }

        return null;
    }

    void mostrarLibro(){
        for(var libro in libros){
            print(libro);
        }
    }
}

void main(){
    ListaLibros listaLibros = ListaLibros();

    listaLibros.insertarLibro(Libro("Cien años de soledad", "novela", "realista"));
    listaLibros.insertarLibro(Libro("El principito", "espiritualidad", "aventuras"));
    listaLibros.insertarLibro(Libro("Ana Frank", "psicologia", "historica"));
    listaLibros.insertarLibro(Libro("Orgullo y prejuicio", "novela", "romantica"));

    print("Lista de libros ordenada por titulo: ");
    listaLibros.mostrarLibro();

    print("Numero de libros en la lista: ${listaLibros.numLibros}");

    print("Libro en la posicion 2: ");
    print(listaLibros.obtenerLibro(2));

    listaLibros.eliminarLibro(1);

    listaLibros.mostrarLibro();

    String parteTitulo = "cien";
    int posicion = listaLibros.buscarLibro(parteTitulo);
    if(posicion != null){
        print("Libro encontrada con la parte del titulo: $parteTitulo en posicion: $posicion");
        print(listaLibros.obtenerLibro(posicion));
    } else {
        print("No se encontro el libro.");
    }
}