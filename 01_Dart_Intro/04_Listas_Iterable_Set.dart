void main(){
  final numbers = [1,2,3,45,6,7,3,1,8,418,3,39,7];
  
  print('List original: $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}'); //numbers[1] también sirve
  print('Reversed: ${numbers.reversed}'); //Devuelve un iterable
  
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); //El set no permite valores repetidos, solo devuelve los valores únicos
  
  //Where aplica filtro sobre todos los elementos de una lista
  final numbersGreaterThan5 = numbers.where((int num){ 
    return num > 5;
  });
  
  print('>5: ${numbersGreaterThan5.toSet()}');
}