import 'package:flutter/material.dart';

import 'widgets/introduction_view_body.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroductionViewBody(),
    );
  }
}
