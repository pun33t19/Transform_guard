import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transform_guard/list_screen.dart';
import 'package:transform_guard/maps.dart';
import 'package:transform_guard/widgets/top_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      CustomListItem(
        text1: "Ankali Sector, Sangli",
        text2: "Power Way 1",
        text3: "Avg height - 120.43 m",
        trailingNumber: 60,
      ),
      CustomListItem(
        text1: "Savali Sector, Sangli",
        text2: "Power Way 2",
        text3: "Avg height - 200.87 m",
        trailingNumber: 90,
      )
    ];

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopRow(),
              const SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MapViewer(
                            assetPath: "assets/image1.png",
                          )));
                },
                child: Stack(children: [
                  SizedBox(
                    height: height * 0.25,
                    width: width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Card(
                          child: Image.asset(
                        'assets/bg_map.jpg',
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: height * 0.25,
                      width: width,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text(
                      "View in Map",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.25,
                width: width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Card(
                    color: const Color.fromARGB(255, 238, 235, 235),
                    elevation: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "View all\nPower Ways",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          Image.asset("assets/tranformer_img.png")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Alert Zone",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return list[index];
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 18,
                    );
                  },
                  itemCount: list.length)
            ],
          ),
        ),
      ),
    );
  }
}
