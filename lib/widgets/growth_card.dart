import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrowthCard extends StatefulWidget {
  const GrowthCard({super.key});

  @override
  State<GrowthCard> createState() => _GrowthCardState();
}

class _GrowthCardState extends State<GrowthCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Growth Rate",
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w700),
              )
            ],
          ),
          Image.asset("")
        ],
      ),
    );
  }
}
