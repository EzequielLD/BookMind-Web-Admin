class Libro {
  final String idLibro;
  final String titulo;
  final String paginas;
  final List genero;
  final String sinopsis;
  final String autor;

  Libro({
    required this.idLibro,
    required this.titulo,
    required this.paginas,
    required this.genero,
    required this.sinopsis,
    required this.autor,
  });

  Libro.fromJson(Map<String, Object?> json)
      : this(
          idLibro: json['IdLibro'] as String,
          titulo: json['Titulo'] as String,
          paginas: json['Paginas'] as String,
          genero: json['Genero'] as List,
          sinopsis: json['Sinopsis']! as String,
          autor: json['Autor'] as String,
        );

  Map<String, Object?> toJson() {
    return {
      'IdLibro': idLibro,
      'Titulo': titulo,
      'Paginas': paginas,
      'Genero': genero,
      'Sinopsis': sinopsis,
      'Autor': autor,
    };
  }
}