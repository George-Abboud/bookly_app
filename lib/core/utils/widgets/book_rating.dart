import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.averageRating,
    required this.ratingCount,
  });

  final MainAxisAlignment mainAxisAlignment;
  final num averageRating;
  final int ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 18,
        ),
        Text(
          '$averageRating ',
          style: Styles.textStyle14,
        ),
        Text(
          '($ratingCount)',
          style:
              Styles.textStyle12.copyWith(color: Colors.white.withOpacity(.5)),
        ),
      ],
    );
  }
}
