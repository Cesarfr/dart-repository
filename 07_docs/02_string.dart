void main(List<String> args) {
  String nombre = 'Cesar';
  String apellido = 'Hernández';

  String nombreCompleto = '$nombre' ' ' '$apellido';
  print('String: $nombreCompleto');

  print('Length: ${nombreCompleto.length}');
  print('Contains C: ${nombreCompleto.contains('C')}');
  print('EndsWith C: ${nombreCompleto.endsWith('z')}');

  print('PadLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight: ${nombreCompleto.padRight(20, '...')}');

  print('Operador []: ${nombreCompleto[10]}');
  print('Operador *: ${nombreCompleto * 2}');
  print('Operador *: ${'*' * 10}');

  print('ReplaceAll: ${nombreCompleto.replaceAll(RegExp(r'e'), 'a')}');
  print('SubString: ${nombreCompleto.substring(0, 5)}');
  print('indexOf C: ${nombreCompleto.indexOf('C')}');

  print('Split: ${nombreCompleto.split(' ')}');

  print(
      'Capitalizar ultima: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
