import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portofolio/screen/main_menu/main_menu_screen.dart';

final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 21, 67, 197),
      brightness: Brightness.dark,
    ),
    textTheme: GoogleFonts.poppinsTextTheme());

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: const MainMenuScreen());
  }
}
