import 'package:flutter/material.dart';
import 'package:section8_widgets_app/config/router/app_router.dart';
import 'package:section8_widgets_app/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:section8_widgets_app/presentation/providers/theme_provider.dart';

void main() {
  //runApp(const MainApp());

  //Adjustment for Riverpod
  runApp(
    const ProviderScope(
      child: MainApp()
    )
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isDarkMode = ref.watch(  themeProvider );
    final selectedColor = ref.watch( selectedColorProvider );

    return MaterialApp.router(
      
      routerConfig: appRouter,
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, isDarkMode: isDarkMode).getTheme(),

      // home: HomeScreen(),
      // routes: {
      //   '/buttons': (context) => const ButtonsScreen(),
      //   '/cards': (context) => const CardsScreen(),
      //x},
    );
  }
}
