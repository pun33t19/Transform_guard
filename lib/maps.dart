import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MapViewer extends StatelessWidget {
  final String assetPath;

  MapViewer({required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
          child: PhotoView(
            imageProvider: AssetImage(assetPath),
            minScale: PhotoViewComputedScale.covered,
            maxScale: PhotoViewComputedScale.covered * 5,
            initialScale: PhotoViewComputedScale.covered * 2.5,
          ),
        ),
      ),
    );
  }
}
