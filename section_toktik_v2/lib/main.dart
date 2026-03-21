import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_toktik_v2/config/theme/ap_theme.dart';
import 'package:section_toktik_v2/presentation/providers/discover_provider.dart';
import 'package:section_toktik_v2/presentation/screens/discover_screen.dart';

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
