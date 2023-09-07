import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transform_guard/maps.dart';
import 'package:transform_guard/widgets/top_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TopRow(),
            SizedBox(
              height: 45,
            ),
            Text(
              "Transformers",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MapViewer(assetPath: 'assets/image1.png'),
              ));
            },
            child: Text('Open Full-Screen Image'),
          ),
          ],
        ),
      ),
    ));
  }
}
