void main(){
  print('Int');
  
  httpGet('https://sample.com').then((value){
    print(value);
  }).catchError((err){
    print('Error: $err');
  });
  
  print('End');
}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 1), (){
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion http';
  });
}