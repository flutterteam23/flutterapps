import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './question_identifier.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> itemData;

  const SummaryItem({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      QuestionIdentifier(
        isCorrect: isCorrectAnswer,
        questionIndex: itemData['question_index'] as int,
      ),
      const SizedBox(width: 20),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(color: Colors.lightBlue, fontSize: 16),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(color: Color.fromARGB(255, 189, 10, 10), fontSize: 16),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
