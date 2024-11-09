import 'package:flutter/material.dart';
import 'zoom_pinch_overlay.dart';

class FullScreenImage extends StatelessWidget {
  final String imageUrl;
  FullScreenImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {
              // Add to bookmarks
            },
          ),
        ],
      ),
      body: Center(
        child: ZoomOverlay(
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
