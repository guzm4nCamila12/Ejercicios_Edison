class Multimedia{
    String titulo;
    String autor;
    String formato;
    double duracion;

    List<String> formatosValidos = [
        'wab', 'mp3', 'midi', 'avi', 'mov', 'mpg', 'cdAudio', 'dvd'
    ];

    Multimedia(this.titulo, this.autor, this.formato, this.duracion){
        if(!formatosValidos.contains(formato)){
            print("Formato no valido: $formato");
        }
    }

    String getTitulo(){
    return titulo;
    }

    String getAutor(){
        return autor;
    }

    String getFormato(){
        return formato;
    }

    double getDuracion(){
        return duracion;
    }

    @override 
    String toString(){
        return 'Multimedia (Titulo: $titulo, Autor: $autor, Formato: $formato, Duracion: $duracion)';
    }

    bool equals(Multimedia multimedia2){
        return this.titulo == multimedia2.titulo && this.autor == multimedia2.autor;
    }
}

void main(){
    try{
        Multimedia multimedia = Multimedia('coraline', 'Henry', 'dvd', 150);
        print(multimedia.toString());

        Multimedia multimedia2 = Multimedia('coraline', 'Henry', 'cdAudio', 130);
        print(multimedia2.toString());

        print(multimedia.equals(multimedia2));

        Multimedia multimediaInvalido = Multimedia('Barbie', 'Noah', 'texto', 114);
    } catch (e){
        print(e);
    }
}

