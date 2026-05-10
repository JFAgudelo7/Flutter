import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  void openDialog( BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel pretium velit, sed mattis leo. Fusce et eleifend tellus. Suspendisse mollis dui metus, at ultrices eros sodales sed. Nunc ac orci odio. In pellentesque consequat nunc. Nullam vestibulum vitae metus lobortis porttitor. Phasellus lacinia neque ligula, sed ullamcorper ante porta eu. Sed ac quam aliquam, vulputate lacus eget, mollis nisi. '),
        actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => context.pop(), 
                  child: const Text('Accept')
                ),
              ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars & Dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel pretium velit, sed mattis leo. Fusce et eleifend tellus. Suspendisse mollis dui metus, at ultrices eros sodales sed. Nunc ac orci odio. In pellentesque consequat nunc. Nullam vestibulum vitae metus lobortis porttitor. Phasellus lacinia neque ligula, sed ullamcorper ante porta eu. Sed ac quam aliquam, vulputate lacus eget, mollis nisi.'),
                  ],
                  );
              },
              child: const Text('Used Licenses'),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show Dialog'),

            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
  }