import 'package:flutter/material.dart';
import 'package:transform_guard/features/tranformers/screens/details_screen.dart';

class CustomListItem extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final int trailingNumber;
  // final String imagePath;
  final Function()? onTap;

  CustomListItem({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.trailingNumber,
    // required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsScreen(
                  customListItem: CustomListItem(
                      text1: text1,
                      text2: text2,
                      text3: text3,
                      trailingNumber: trailingNumber),
                )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(12.0), // Adjust the radius as needed
          border: Border.all(
            color: Color.fromARGB(255, 224, 255, 224), // Green border color
            width: 2.0, // Border width
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            leading: Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              direction: Axis.vertical,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(color: Color.fromARGB(255, 132, 138, 148)),
                ),
                Text(
                  text2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 0, 32, 85)),
                ),
                Text(text3,
                    style:
                        TextStyle(color: Color.fromARGB(255, 132, 138, 148))),
              ],
            ),
            trailing: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: trailingNumber > 80
                    ? Colors.red
                    : trailingNumber > 50
                        ? Colors.yellow
                        : Colors.green, // Customize the circle color as needed
              ),
              padding: EdgeInsets.all(8.0), // Adjust the padding as needed
              child: Text(
                trailingNumber.toString(), // Convert the number to a string
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.white, // Customize the number color
                ),
              ),
            ),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
