class Pelicula {
    String titulo;
    String genero;
    String paisProduccion;

    Pelicula(this.titulo, this.genero, this.paisProduccion);
}

class servicioStreaming {
    List<Pelicula> peliculas = [];
    var buscarPelicula;

    void agregarPelicula(String titulo, String genero, String paisProduccion){
        var nuevaPelicula = Pelicula(titulo, genero, paisProduccion);
        peliculas.add(nuevaPelicula);
    }

    void mostrarPelicula(){
        for(var pelicula in peliculas){
            print("Titulo: ${pelicula.titulo}. Genero: ${pelicula.genero}. Pais de produccion: ${pelicula.paisProduccion}");
        }
    }

    void actualizarPelicula(String titulo, String nuevoTitulo, String nuevoGenero, String nuevoPaisProduccion){
        var pelicula = buscarPelicula(titulo);
        if(pelicula != null){
            pelicula.titulo = nuevoTitulo;
            pelicula.genero = nuevoGenero;
            pelicula.paisProduccion = nuevoPaisProduccion;
            print("Pelicula actualizada con exito");
        } else {
            print("No se encontro la pelicula");
        }
    }

    void eliminarPelicula(String titulo){
        var pelicula = buscarPelicula(titulo);
        if(pelicula != null){
            peliculas.remove(pelicula);
            print("Pelicula eliminada.");
        } else {
            print("No se encontro la pelicula.");
        }
    }
}

void main(){
    var ServicioStreaming = servicioStreaming();

    ServicioStreaming.agregarPelicula('El duende', 'terror', 'Colombia');
    ServicioStreaming.agregarPelicula('Norbit', 'comedia', 'EEUU');
    ServicioStreaming.agregarPelicula('Rapidos y furiosos 5', 'accion', 'Brasil');

    print("Peliculas:");
    ServicioStreaming.mostrarPelicula();

    ServicioStreaming.actualizarPelicula('Norbit', 'Norbit 2', 'comedia', 'Colombia');
    ServicioStreaming.mostrarPelicula();

    ServicioStreaming.eliminarPelicula('El duende');
    ServicioStreaming.mostrarPelicula(); 
}