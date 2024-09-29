import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: const ShapeDecoration(
          color: Color.fromARGB(25, 255, 255, 255), shape: CircleBorder()),
    );
  }
}
