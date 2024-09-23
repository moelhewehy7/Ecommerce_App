import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_cerved_edges.dart';

class CustomCurvedWidget extends StatelessWidget {
  const CustomCurvedWidget({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: widget,
    );
  }
}
