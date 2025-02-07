class Libro{

  final String titulo;
  final String autor;
  final String anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);

}

class Biblioteca{

  List<Libro> libros=[];

  void agregar(Libro libro){
    libros.add(libro);
  }

  void remover(Libro libro){
    libros.removeWhere((libro) => libro==libro);
  }

  

}