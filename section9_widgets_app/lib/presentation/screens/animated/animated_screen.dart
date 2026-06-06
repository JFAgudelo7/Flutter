import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget{
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen>{

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10;

   void changeShape(){
    final random = Random();
    width = random.nextInt(300) + 50;
    height = random.nextInt(500) + 50;
    borderRadius = random.nextInt(100) + 10;
    color = Color.fromRGBO(
      random.nextInt(255),  //Red
      random.nextInt(255),  //Green
      random.nextInt(255),  //Blue
      1                     //Opacity
    );

    setState(() {});
   }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration( milliseconds: 400),
          width: width <= 0 ? 0 : width,
          curve: Curves.elasticOut,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius < 0 ? 0 : borderRadius),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon( Icons.play_arrow_rounded),
      )
    );
  }
}