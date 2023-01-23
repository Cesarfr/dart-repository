import 'dart:io';

void main(List<String> args) {
  File file = new File(
      Directory.current.path + '/04_tipo_no_comunes/assets/personas.txt');
  Future<String> f = file.readAsString();
  f.then(print);

  print('Fin del main');
}
