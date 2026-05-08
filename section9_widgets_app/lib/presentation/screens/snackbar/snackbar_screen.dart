import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget{
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar ( BuildContext context ){
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: const Text('Hello World')
    );

    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars & Dialogs'),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
  }