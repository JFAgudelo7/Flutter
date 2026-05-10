import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget{
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration( milliseconds: 400),
          width: 100,
          curve: Curves.easeOutCubic,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: const Icon( Icons.play_arrow_rounded),
      )
    );
  }
  }