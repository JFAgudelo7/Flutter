void main() {
  final Hero wolverine = Hero('Logan', 'Regeneration');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  final Hero2 mystique = Hero2(name: 'Raven');
  print(
    mystique,
  ); //Cuando se ejecuta como un string, llama automáticamente al toString, por lo que print(mystique.toString()) es equivalente a print(mystique)
}

class Hero {
  String name;
  String power;

  Hero(this.name, this.power);

  //Otra forma del constructor
  //Hero(String pName, String pPower): name = pName, power = pPower;
}

//Ahora con opcionales
class Hero2 {
  String name;
  String power;

  Hero2({required this.name, this.power = 'No power'});

  @override
  String toString() {
    return '$name - $power';
  }
}
