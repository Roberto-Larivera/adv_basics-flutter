import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(192, 250, 108, 155),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: const Color.fromARGB(255, 59, 4, 132),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 220, 203, 254),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: const Color.fromARGB(255, 220, 203, 254),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: const Color.fromARGB(255, 220, 203, 254),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
