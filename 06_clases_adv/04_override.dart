class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);

  @override
  void imprimirNombre() {
    print('Cliente nombre: $nombre, ($edad)');
  }
}

void main(List<String> args) {
  final yo = new Cliente(28, 'Cesar');
  yo.imprimirNombre();
}
