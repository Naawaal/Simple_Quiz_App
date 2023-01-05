import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_quiz_app/screens/homepage.dart';

class SimpleQuizApp extends StatelessWidget {
  const SimpleQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Simple Quiz App',
        home: const HomepageScreen(),
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ));
  }
}
