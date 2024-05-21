import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:slam/utils/app_theme.dart';

class CommonFunctions {
// var theme = Theme.of(context);

  static toggleTheme({required BuildContext context}) {
    var darkTheme = Themes.darkTheme;
    var lightTheme = Themes.lightTheme;
    var brightness = ThemeModelInheritedNotifier.of(context).theme.brightness;
    ThemeSwitcher.of(context).changeTheme(
        theme: brightness == Brightness.light ? darkTheme : lightTheme,
        isReversed: brightness == Brightness.light ? true : false);
  }
}
