mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

class Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('2 - $hoy :::: $texto');
  }
}

abstract class Astro with Logger {
  String? nombre;
  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Otro texto --');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String? nombre;
  Asteroide(this.nombre) {
    imprimir2('Soy $nombre');
  }
}

void main(List<String> args) {
  final ceres = new Asteroide('Ceres');
}
