void main(){
  final windPlant = WindPlant(initialEnergy : 100);
  print(windPlant);
  print('wind: ${chargePhone(windPlant)}');
  
  final nuclearPlant = NuclearPlant(energyLeft : 1000);
    print('Nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant){
  if (plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft -10;
}

enum PlantType {nuclear, wind, water}

abstract class EnergyPlant{
  double energyLeft;
  final PlantType type; 
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
  
  
}

//extends o implements
//Extends hereda toda la clase padre
class WindPlant extends EnergyPlant{
  WindPlant({    required double initialEnergy  })
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
      
}

//Implements 
//Implementa una parte de la clase, no todo
class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  
  @override
  PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft});
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
    
}