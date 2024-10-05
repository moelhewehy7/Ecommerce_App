import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/widgets/custom_text_header.dart';
import 'package:readmore/readmore.dart';

class DiscriptionWidget extends StatelessWidget {
  const DiscriptionWidget({
    super.key,
    required String laptopDescription,
  }) : _laptopDescription = laptopDescription;

  final String _laptopDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextheader(
          title: "Discription",
          showTextButton: false,
          titleColor: Theme.of(context).colorScheme.onSurface,
        ),
        const SizedBox(
          height: 16,
        ),
        ReadMoreText(
          style: AppStyles.stylePoppinsMedium20
              .copyWith(fontSize: 17, fontWeight: FontWeight.w400),
          _laptopDescription,
          trimLines: 6,
          colorClickableText:
              Theme.of(context).colorScheme.primary, // "Read more" text color
          trimMode: TrimMode.Line, // Trim by number of lines
          trimCollapsedText: 'Read More',
          trimExpandedText: 'Read Less',
          moreStyle: TextStyle(
              fontSize: 14, color: Theme.of(context).colorScheme.primary),
          lessStyle: TextStyle(
              fontSize: 14, color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
