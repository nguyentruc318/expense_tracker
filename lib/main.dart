import 'package:expenses_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
// import "package:flutter/services.dart";

var kScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 246, 192, 65));

var kDarkScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 100, 145, 235));
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {

  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkScheme.onPrimaryContainer,
              foregroundColor: kDarkScheme.onSecondary),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kScheme,
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kScheme.onPrimaryContainer,
            foregroundColor: kScheme.onSecondary),
        cardTheme: const CardTheme().copyWith(
          color: kScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kScheme.onPrimaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kScheme.onSecondaryContainer,
                  fontSize: 14),
            ),
        scaffoldBackgroundColor: kScheme.onSecondaryFixedVariant,
      ),
      // themeMode: ThemeMode.system,
      home: const Expenses(),
    );
  }
}
