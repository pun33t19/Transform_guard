import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 147, 134, 134)),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 64, 193, 85),
                ),
                Text(
                  "Maharashtra, India",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 58, 58, 58)),
                ),
                const Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 28,
                )
              ],
            )
          ],
        ),
        const Icon(
          Icons.notifications_active,
          color: Color.fromARGB(255, 64, 193, 85),
        )
      ],
    );
  }
}
