import 'package:flutter/material.dart';

class BackGroundContainerWidget extends StatelessWidget {
  const BackGroundContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Container(
      height: h * 0.300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(230, 17, 17, 17),
            Color.fromARGB(215, 49, 49, 49),
          ],
        ),
      ),
    );
  }
}
