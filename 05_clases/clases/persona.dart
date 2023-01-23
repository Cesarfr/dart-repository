class Persona {
  // Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Propiedad privada';

  // Getters y setters
  String get bio => _bio.toUpperCase();

  // set bio(String texto) {
  //   _bio = texto;
  // }
  set bio(String texto) => _bio = texto;

  // Constructores
  // Persona(int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  // }
  Persona({this.edad = 0, this.nombre = 'Sin nombre'});
  Persona.persona30(this.nombre) {
    this.edad = 30;
  }
  Persona.persona40(String nombre) {
    this.nombre = nombre;
    this.edad = 40;
  }

  // Métodos
  @override
  String toString() {
    return 'Persona: $nombre, $edad, $_bio';
  }
}
