import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookItemDetails extends StatelessWidget {
  const BookItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(
              'Harry Potter and the Goblet of Fire',
              style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            'J.K. Rowling',
            style: Styles.textStyle14.copyWith(
              color: Colors.white.withOpacity(.7),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                '19.99 €',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              const BookRating(),
            ],
          ),
        ],
      ),
    );
  }
}
