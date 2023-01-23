class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehículo apagado');
  }
}

class Carro extends Vehiculo {
  int kilometraje = 0;
}

void main(List<String> args) {
  final ford = new Carro();
  ford.encender();
  ford.apagar();
  ford.apagar();
  ford.apagar();
}
