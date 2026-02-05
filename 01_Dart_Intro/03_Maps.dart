void main(){
  
  //Es recomendable tipar el Mapa. Aunque si se tiene final pokemon = {} también es válido, pero no sería tipado
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png', 
      2: 'ditto/back.png',
    },
    
  };
  
  //El mapa también soporta llaves de tipo entero
  final pokemons = {
    1: "Bulbasaur",
    2: "Squirtle",
    3: "Charmander",
  };
  
  print(pokemon);
  print(pokemons);
  
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');
  //Dart reconoce cuando es un mapa, el 1 sería la posición 1, a diferencia de un array, donde 1 sería el 2do elemento
  print('Name: ${pokemons[1]}');
  
  //Tarea
  print('Front: ${pokemon['sprites'][1]}');
  print('Back: ${pokemon['sprites'][2]}');
  
}