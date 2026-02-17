import 'package:flutter/material.dart';
import 'package:section5_yesn_o_app/config/theme/app_theme.dart';
import 'package:section5_yesn_o_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 10 ).theme(),      
      home: const ChatScreen()
    );
  }
}