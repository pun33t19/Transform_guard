import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transform_guard/widgets/top_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Column(
          children: [
            TopRow(),
            SizedBox(
              height: 45,
            ),
            Text(
              "Transformers",
              style: GoogleFonts.poppins(color: Colors.black),
            )
          ],
        ),
      ),
    ));
  }
}
