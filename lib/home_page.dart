import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transform_guard/list_screen.dart';
import 'package:transform_guard/maps.dart';
import 'package:transform_guard/widgets/top_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [CustomListItem(text1: "Ankali Sector, Sangli",text2: "Power Way 2",text3: "Avg height - 200.87 m", trailingNumber: 60,)];

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: Container(
        width: width,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TopRow(),
            const SizedBox(
              height: 45,
            ),
            Stack(children: [
              Container(
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
                  color: Colors.black.withOpacity(0.3),
                ),
              )
            ],
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) =>
            //           MapViewer(assetPath: 'assets/image2.png'),
            //     ));lo
            //   },
            //   child: Text('Open Full-Screen Image'),
            // ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return list[index];
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 18,
                  );
                },
                itemCount: list.length)
          ],
        ),
      ),
    ));
  }
}
