import 'dart:async';

void main(List<String> args) {
  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen((data) => print('Despegando! $data'),
      onError: (err) => print('Error: $err'),
      cancelOnError: true,
      onDone: () => print('Misión completa!'));

  streamController.stream.listen((data) => print('Despegando 2! $data'),
      onError: (err) => print('Error 2: $err'),
      cancelOnError: true,
      onDone: () => print('Misión completa 2!'));

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Tenemos un problema.');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  streamController.sink.close();

  print('Fin del main');
}
