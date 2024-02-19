import 'package:app_base/app/utilities/transition_builders.dart';
import 'package:flutter/material.dart';
 
const defaultDuration = Duration(milliseconds: 250);

const primaryIcon = Icon(Icons.home);
const secondaryIcon = Icon(Icons.home);

const primaryColor = Color.fromRGBO(70, 120, 150, 1.0);
const secondaryColor = Color.fromRGBO(70, 120, 150, 1.0);

const homePrimaryColor = Color.fromRGBO(70, 120, 150, 1.0);
const homeSecondaryColor = Color.fromRGBO(70, 120, 150, 1.0);

const _pageTransitionsTheme = PageTransitionsTheme(builders: {
  TargetPlatform.iOS: FadeTransitionBuilder(),
  TargetPlatform.android: FadeTransitionBuilder(),
});

ThemeData defaultTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    colorScheme: _buildColorScheme(base.colorScheme),
    bottomNavigationBarTheme: _bottomNavigationBarThemeData(base.bottomNavigationBarTheme),
    pageTransitionsTheme: _pageTransitionsTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base;
 
}

ColorScheme _buildColorScheme(ColorScheme base) {
  return base.copyWith(

    primary: const Color.fromRGBO(124, 127, 128, 1.0),
    // primaryVariant: const Color.fromRGBO(70, 120, 150, 1.0),
    secondary: const Color.fromRGBO(70, 120, 150, 1.0),
    // secondaryVariant: const Color.fromRGBO(70, 120, 150, 1.0),
    surfaceVariant: const Color.fromRGBO(70, 120, 150, 1.0),
    onSurfaceVariant: const Color.fromRGBO(70, 120, 150, 1.0),
    
    surface: Colors.white,
    background: Colors.white,
    error: const Color(0xffb00020),
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );
}

BottomNavigationBarThemeData _bottomNavigationBarThemeData(BottomNavigationBarThemeData base) {
  return base.copyWith(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
    selectedItemColor: Colors.blue,
    // selectedIconTheme: IconThemeData(size: 28, opacity: 1.0),
    selectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    unselectedItemColor: Colors.black87,
    // unselectedIconTheme: IconThemeData(size: 22, opacity: 0.6),
    unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  );
}
