// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_cerved_edges.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: CustomCervedEdges(),
            child: Container(
              // padding: EdgeInsets.zero,
              height: 400,
              color: Theme.of(context).colorScheme.primary,
              child: Stack(
                children: [
                  Positioned(
                      top: -150,
                      right: -250,
                      child:
                          CustomCircularContainer()), // if we wanna go up we need to use - and right - and the rest is the oppostie
                  Positioned(
                      top: 100, right: -300, child: CustomCircularContainer()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: ShapeDecoration(
          color: const Color.fromARGB(25, 255, 255, 255),
          shape: CircleBorder()),
    );
  }
}
