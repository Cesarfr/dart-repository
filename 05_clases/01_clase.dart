import 'clases/persona.dart';

void main(List<String> args) {
  final persona = new Persona(edad: 28, nombre: 'Cesar');
  final persona2 = new Persona.persona30('María');
  // persona
  //   ..nombre = 'Cesar'
  //   ..edad = 28;
  // ..bio = 'Algo';

  persona.bio = 'Otro valor';

  print(persona);
  print(persona2);
}
