void main() async {
  print('Int');

  try {
    final value = await httpGet('https://sample.com');
    print(value);
  } on Exception catch(err){
    print('Tenemos una exception: $err');
  }catch (err) {
    print('Tenemos un error: $err');
  } finally {
    print('Fin del Try-Catch');
  }

  print('End');
}

//Async siempre devolverá un Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros');
  //throw 'Error en la aplicacion'; //Así sería un error no controlado
  //return 'Tenemos un valor de la petición';
}
