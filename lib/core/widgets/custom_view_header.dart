import 'package:flutter/material.dart';

import 'custom_curved_widget.dart';
import '../../features/home/presentation/views/widgets/custom_circular_container.dart';

class CustomViewHeader extends StatelessWidget {
  const CustomViewHeader({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomCurvedWidget(
      widget: Container(
        padding: EdgeInsets.zero,
        color: Theme.of(context).colorScheme.primary,
        child: Stack(
          children: [
            const Positioned(
                top: -100,
                right: -250,
                child:
                    CustomCircularContainer()), // if we wanna go up we need to use - and right - and the rest is the oppostie
            const Positioned(
                top: 100, right: -300, child: CustomCircularContainer()),
            child,
          ],
        ),
      ),
    );
  }
}
