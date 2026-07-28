import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:section8_widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider((ref) => false);

//Unchangable Color List
final colorListProvider = Provider((ref) => colorList);