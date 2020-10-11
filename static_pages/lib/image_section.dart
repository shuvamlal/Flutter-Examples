import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/lake.jpg',
      height: 200,
      width: 400,
      fit: BoxFit.cover,
    );
  }
}