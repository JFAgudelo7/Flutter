void main(){
  
  final ironman = Hero(
    isAlive: false,
    power: 'Money',
    name:'Tony Stark'
  );
  print(ironman);
  
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Aracnido',
    'isAlive': true
  };
  final spiderman = Hero.fromJson(rawJson);
  print(spiderman);
}

class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //Se pueden definir constructores con nombre. Recomendable usar la verificación de nulo dado que existe posibilidad de que no llegue la variable tal como se define (case senstive) o llegue nula
  Hero.fromJson(Map<String,dynamic> json)
    : name = json['name'] ?? "No name found",
      power = json['power'] ?? "No power found",
      isAlive = json['isAlive'] ?? "No isAlive found";
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'Yes' : 'Nope'}';
  }
}