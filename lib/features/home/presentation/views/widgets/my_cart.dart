import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_rounded_container.dart';
import '../../../../../core/utils/app_styles.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackArow: true,
          title: Text("My Cart",
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22))),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        shrinkWrap: true,
        itemCount: 8,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomRoundedContainer(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 110,
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/images/NikeWildhorse.png"),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nike ",
                            overflow: TextOverflow.ellipsis,
                            style: AppStyles.stylePoppinsMedium14.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant)),
                        const SizedBox(
                          width: 2,
                        ),
                        const Icon(
                          shadows: [Shadow(color: Colors.white, blurRadius: 8)],
                          Icons.fiber_manual_record_sharp,
                          color: Colors.black,
                        )
                      ],
                    ),
                    const Text(
                      "Nike air shoes ",
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.styleRalewayBold17,
                    ),
                    Text.rich(TextSpan(
                      children: [
                        TextSpan(
                          text: "color : ",
                          style: AppStyles.styleRalewayBold14.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                        TextSpan(
                          text: "Black ",
                          style: AppStyles.stylePoppinsMedium20.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                        TextSpan(
                          text: "size : ",
                          style: AppStyles.styleRalewayBold14.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                        TextSpan(
                          text: "Eu 42",
                          style: AppStyles.stylePoppinsMedium20.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                      ],
                    )),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 32,
                              width: 32,
                              child: IconButton.filledTonal(
                                padding: EdgeInsets.zero,
                                iconSize: 16,
                                constraints: const BoxConstraints(
                                  minHeight: 32, // Minimum height of the button
                                  minWidth: 32, // Minimum width of the button
                                ),
                                icon: Icon(
                                  Icons.remove,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              height:
                                  32, // Ensure height is the same as the button
                              width:
                                  32, // Ensure width is the same as the button
                              child: IconButton.filledTonal(
                                padding: EdgeInsets.zero,
                                iconSize: 16,
                                constraints: const BoxConstraints(
                                  minHeight: 32, // Minimum height of the button
                                  minWidth: 32, // Minimum width of the button
                                ),
                                icon: Icon(
                                  Icons.add,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          r'$134.0',
                          style: AppStyles.stylePoppinsMedium20.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
