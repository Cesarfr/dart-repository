void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int>? lista2;
  List<int> lista3 = [3, 1, 2, 15, -10];
  List<String> nombre = ['Tony', 'Peter'];

  print('Length: ${lista.length}');
  print('First: ${lista[0]}');
  print('First: ${lista.first}');
  print('Last: ${lista.last}');

  print('isEmpty: ${lista.isEmpty}');
  print('isEmpty: ${lista2 == null}');

  print('asMap: ${lista.asMap()}');

  Map listaMapa = lista.asMap();
  print('ListaMapa: ${listaMapa[4]}');

  Map nombreMapa = nombre.asMap();
  print('NombreMapa: ${nombreMapa[1]}');

  print('indexOf: ${nombre.indexOf('Peter')}');

  int mayor3 = lista.indexWhere((numero) => numero > 3);
  print('indexWhere mayor 3: $mayor3');

  print('Remove: ${nombre.remove('Tony')}');
  print('Remove: $nombre');

  lista.shuffle();
  print('Shuffle: $lista');

  lista3.sort();
  print('Sort: $lista3 }');
  print('Reverse: ${lista3.reversed.toList()}');

  nombre.forEach((nom) {
    nom = nom.toUpperCase();
    print(nom);
  });

  print('Listado: $nombre');
  final newList = nombre.map((nom) => nom.toUpperCase()).toList();
  print('newList: $newList');
}
