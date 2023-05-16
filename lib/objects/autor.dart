class Autor {
  final String idAutor;
  final String nombre;
  final String apellidos;
  final String genero;
  final String fechaNacimiento;
  final String paisNacimiento;

  Autor({
    required this.idAutor,
    required this.nombre,
    required this.apellidos,
    required this.genero,
    required this.fechaNacimiento,
    required this.paisNacimiento,
  });

  Autor.fromJson(Map<String, Object?> json)
      : this(
          idAutor: json['IdAutor'] as String,
          nombre: json['Nombre'] as String,
          apellidos: json['Apellidos'] as String,
          genero: json['Genero'] as String,
          fechaNacimiento: json['FechaNacimiento']! as String,
          paisNacimiento: json['PaisNacimiento'] as String,
        );

  Map<String, Object?> toJson() {
    return {
      'IdAutor': idAutor,
      'Nombre': nombre,
      'Apellidos': apellidos,
      'Genero': genero,
      'FechaNacimiento': fechaNacimiento,
      'PaisNacimiento': paisNacimiento,
    };
  }
}
