import 'package:http/http.dart' as http;
import 'package:paquetes/classes/pais.dart';
import 'package:paquetes/classes/reqres_response.dart';

void getReqRespService() {
  // print('Hello world: ${paquetes.calculate()}!');
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    // print(res);
    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('page: ${body['data'][2]['id']}');

    final reqResResp = reqResResponseFromJson(res.body);
    print('page: ${reqResResp.page}');
    print('per_page: ${reqResResp.perPage}');
    print('page: ${reqResResp.data[2].id}');
  });
}

void getPais() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');
  http.get(url).then((res) {
    final pais = paisFromJson(res.body);
    print('Pais: ${pais.name}');
    print('Población: ${pais.population}');
    print('Fronteras:');
    // pais.borders.forEach((border) => print('\t$border'));
    for (var border in pais.borders) {
      print('\t$border');
    }
    print('languages: ${pais.languages[0].nativeName}');
    print('Latitud: ${pais.latlng[0]}');
    print('Longitud: ${pais.latlng[1]}');
    print('Moneda: ${pais.currencies[0].name}');
    print('Bandera: ${pais.flag}');
  });
}
