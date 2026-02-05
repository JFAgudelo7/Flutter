void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final abilities = ['impostor']; //Si no se define, Dart lo infiere
  final List<String> abilities2 = ['mirroring']; //Definiendo el tipo lista y el tipo de sus elementos
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  
  //Dynamic Type (Por defecto, es null. Acepta nulos)
  //Este tipo de dato remueve todas las restricciones, el safety null. Cuidado al usarlo, operaciones entre datos que son inviables, no serían marcadas como erróneas con es dynamic
  
  dynamic errorMessage = 'Error';
  errorMessage = true;
  errorMessage = [1,2,3,4];
  errorMessage = {1,2,3,4};
  errorMessage = (1,2,3,4);
  errorMessage = () => true;
  errorMessage = null;
 
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $abilities2
    $sprites
    $errorMessage
  """);
}