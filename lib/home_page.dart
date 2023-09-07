import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transform_guard/list_screen.dart';
import 'package:transform_guard/maps.dart';
import 'package:transform_guard/widgets/top_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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
            Container(
              height: height * 0.25,
              child: Image.asset('assets/bg.png'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) =>
            //           MapViewer(assetPath: 'assets/image2.png'),
            //     ));
            //   },
            //   child: Text('Open Full-Screen Image'),
            // ),
          ],
        ),
      ),
    ));
  }
}
