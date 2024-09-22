import 'package:flutter/material.dart';
import 'intoduction_descrption.dart';
import 'introduction_footer.dart';
import 'introduction_header.dart';

class IntroductionViewBody extends StatelessWidget {
  const IntroductionViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            IntroductionHeader(),
            SizedBox(
              height: 18,
            ),
            IntroductionViewDescription(),
            Spacer(),
            IntroductionFooter(),
            SizedBox(
              height: 55,
            ),
          ]),
    );
  }
}
