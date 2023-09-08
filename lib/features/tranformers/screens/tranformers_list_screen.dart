import 'package:flutter/material.dart';
import 'package:transform_guard/list_screen.dart';

class TransformersListScreen extends StatelessWidget {
  const TransformersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      CustomListItem(
        text1: "Ankali Sector, Sangli",
        text2: "Power Way 1",
        text3: "Avg height - 120.43 m",
        trailingNumber: 70,
      ),
      CustomListItem(
        text1: "Savali Sector, Sangli",
        text2: "Power Way 2",
        text3: "Avg height - 200.87 m",
        trailingNumber: 90,
      ),
      CustomListItem(
        text1: "Nilaji Sector, Sangli",
        text2: "Power Way 3",
        text3: "Avg height - 120.43 m",
        trailingNumber: 40,
      ),
      CustomListItem(
        text1: "Miraj Sector, Sangli",
        text2: "Power Way 4",
        text3: "Avg height - 200.87 m",
        trailingNumber: 65,
      ),
      CustomListItem(
        text1: "Danoli Sector, Sangli",
        text2: "Power Way 5",
        text3: "Avg height - 120.43 m",
        trailingNumber: 60,
      ),
      CustomListItem(
        text1: "Padmali Sector, Sangli",
        text2: "Power Way 6",
        text3: "Avg height - 100.87 m",
        trailingNumber: 30,
      )
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return list[index];
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 18,
                ),
            itemCount: list.length),
      ),
    );
  }
}
