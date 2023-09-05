import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final void Function() startQuiz;
  const HomeScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(194, 255, 255, 255),
        ),
        const SizedBox(height: 50),
         Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.dynaPuff(color: Colors.white, fontSize: 28),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 100,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.ads_click_outlined, color: Color.fromARGB(218, 0, 0, 0)),
          label: Text(
            'Start Quiz',
            style: GoogleFonts.dynaPuff(color: const Color.fromARGB(218, 0, 0, 0), fontSize: 24),
          ),
        ),
      ],
    );
  }
}
