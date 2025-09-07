import 'package:flutter/material.dart';

class TextAppWidget extends StatelessWidget {
  const TextAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Coffee Shop',
          style: textTeme.headlineLarge!
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
