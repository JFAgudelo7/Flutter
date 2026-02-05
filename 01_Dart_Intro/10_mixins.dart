abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador{
  void volar() => print('Estoy volando');
}

mixin Caminante{
  void caminar() => print('Estoy caminando');
}

mixin Nadador{
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador{}
class Bat extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante{}

void main(){
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Bat();
  batman.volar();
  batman.caminar();
  
  
  
}