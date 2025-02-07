class Libro{

  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);

   @override
  String toString() {
    return 'Titulo: $titulo, Autor: $autor, Año de publicación: $anioPublicacion';
  }

}

class Biblioteca{

  List<Libro> libros=[];

  void agregar(Libro libro){
    libros.add(libro);
  }

  void remover(String titulo){
    libros.removeWhere((libro) => libro.titulo==titulo);
  }

  List<Libro> buscar(String autor){
    return libros.where((libro) => libro.autor == autor).toList();
  }

  void mostrarEnOrden(){
    libros.sort(((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion)));
    for (Libro libro in libros) {
      print(libro);
    }
  }
  
}

void main(List<String> arguments){

  Libro libro1 = Libro('Cien años de soledad', 'Gabriel García Márquez', 1967);
  Libro libro2 = Libro('El otoño del patriarca', 'Gabriel García Márquez', 1975);
  Libro libro3 = Libro('1984', 'George Orwell', 1949);
  Libro libro4 = Libro('Animal Farm', 'George Orwell', 1945);
  Libro libro5 = Libro('El Quijote', 'Miguel de Cervantes', 1605);
  Libro libro6 = Libro('Novelas Ejemplares', 'Miguel de Cervantes', 1613);
  Libro libro7 = Libro('Crimen y castigo', 'Fyodor Dostoevsky', 1866);
  Libro libro8 = Libro('Los hermanos Karamazov', 'Fyodor Dostoevsky', 1880);
  Libro libro9 = Libro('Indigno de ser humano', 'Osamu Dazai', 1948);
  Libro libro10 = Libro('La descentralización de la naturaleza', 'Osamu Dazai', 1944);
  
  //instancia de biblioteca
  Biblioteca biblioteca = Biblioteca();

  // Agregar libros a la biblioteca
  biblioteca.agregar(libro1);
  biblioteca.agregar(libro2);
  biblioteca.agregar(libro3);
  biblioteca.agregar(libro4);
  biblioteca.agregar(libro5);
  biblioteca.agregar(libro6);
  biblioteca.agregar(libro7);
  biblioteca.agregar(libro8);
  biblioteca.agregar(libro9);
  biblioteca.agregar(libro10);
  
  //mostrar libros en biblioteca
  print('list completa');
  biblioteca.mostrarEnOrden();
  //libros removidos
  biblioteca.remover('1984');
  //Mostrar con libros removidos
  print('\nLista despues de remover');
  biblioteca.mostrarEnOrden();

  //buscar por autor
  print('\nBusqueda por autor');
  print(biblioteca.buscar('Fyodor Dostoevsky'));

}