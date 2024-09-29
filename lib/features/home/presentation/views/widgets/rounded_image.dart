import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    required this.image,
    super.key,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
