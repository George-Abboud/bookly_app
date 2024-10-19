import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;
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
        const Text(
          '4.8 ',
          style: Styles.textStyle16,
        ),
        Text(
          '(2543)',
          style:
              Styles.textStyle14.copyWith(color: Colors.white.withOpacity(.5)),
        ),
      ],
    );
  }
}
