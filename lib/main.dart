import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/theme/dark_theme.dart';
import 'package:flutter_portfolio/view/splash/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 93, 0, 255)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 10, 46, 109),
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: const Color.fromARGB(255, 255, 0, 0),
            )
            .copyWith(
              bodyLarge: const TextStyle(color: bodyTextColor),
              bodyMedium: const TextStyle(color: bodyTextColor),
            ),
      ),
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashView(),
    );
  }
}
