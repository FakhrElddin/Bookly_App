import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.ratingAverage,
    required this.ratingCount,
  });

  final MainAxisAlignment mainAxisAlignment;
  final dynamic ratingAverage;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$ratingAverage',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($ratingCount)',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
