void main (){
  print(greetEveryone());
  print(bye());
  print('Suma: ${addNumbers(10,20)}');
  print('Suma Flecha: ${addNumbersFlecha(11,23)}');
  print('Suma Opcional: ${addNumbersOptional(10)}');
  print(greetPerson(message:'Hi', name:'Juan'));
}

String greetEveryone(){
    return 'Hello all!';
 }

//Funcion Flecha. No permite elaborar cuerpo de la función, lo que se devuelve viene después de la flecha
String bye() => 'Bye all!';

//Es recomendable tipar los parametros para evitar errores en e llamado
int addNumbers(int a,int b){
  return a + b;
}

//Parametro opcional
// Para parametros opcionales, se encierran dentro de llaves, y tambie'n se les asigna el valor por defecto
int addNumbersOptional(int a, [int b = 0]){
  //Otra forma de validar el valor por defecto sería
  
  //b ??= 0
  //Esta forma dice que si b es nulo, entonces asigne el valor de 0
  
  return a + b;  
}

//Opcional pero no posicional
String greetPerson({required String name, String message = 'Hola'}){
  return '$message, JF';
}


//Tarea
int addNumbersFlecha(int a, int b) => a + b;