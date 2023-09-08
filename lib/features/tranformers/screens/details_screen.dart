import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transform_guard/list_screen.dart';
import 'package:transform_guard/maps.dart';

class DetailsScreen extends StatelessWidget {
  final CustomListItem customListItem;

  const DetailsScreen({super.key, required this.customListItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.bottomCenter, children: [
      GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MapViewer(assetPath: 'assets/image2.png'))),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/image2.png',
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Text(
                  customListItem.text1,
                  style: GoogleFonts.poppins(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "No of Enchroachments : 3",
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Average Height : 120.44m",
                        style: GoogleFonts.poppins(fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Growth Rate",
                        style: GoogleFonts.poppins(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset("assets/progress_chart.png")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/line_graph.png"))
            ],
          ),
        ),
      ),
    ]));
  }
}
