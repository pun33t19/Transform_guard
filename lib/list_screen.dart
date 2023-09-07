import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String imagePath;
  final Function()? onTap;

  CustomListItem({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(12.0), // Adjust the radius as needed
            border: Border.all(
              color: Colors.green, // Green border color
              width: 2.0, // Border width
            ),
          ),
          child: ListTile(
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1),
                Text(text2),
                Text(text3),
              ],
            ),
            trailing: Image.asset(imagePath),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
