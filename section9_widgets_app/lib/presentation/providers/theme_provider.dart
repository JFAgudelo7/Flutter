import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:section8_widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider((ref) => false);

//Unchangable Color List
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

//Object AppTheme (Custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller or Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{

  //State + new AppTheme();
  ThemeNotifier(): super ( AppTheme());

  void toggleDarkmode(){
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void changeColorIndex( int colorIndex ){
    state = state.copyWith( selectedColor: colorIndex);
  }
}