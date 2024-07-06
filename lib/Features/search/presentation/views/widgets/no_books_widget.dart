import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoBooksWidget extends StatelessWidget {
  const NoBooksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.error_outline,
          size: 30,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'There are no books with this name, try another name',
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}