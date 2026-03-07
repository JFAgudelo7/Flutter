import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section7_toktik/config/theme/app_theme.dart';
import 'package:section7_toktik/presentation/providers/discover_provider.dart';
import 'package:section7_toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DiscoverProvider())],
      child: MaterialApp(
        title: 'TokTik',
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        home: const DiscoverScreen(),
      ),
    );
  }
}
