import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItemDetails extends StatelessWidget {
  const BestSellerItemDetails({
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
          const SizedBox(
            height: 4,
          ),
          Text(
            'J.K. Rowling',
            style: Styles.textStyle14.copyWith(
              color: Colors.white.withOpacity(.7),
            ),
          ),
          const Spacer(),
          const BookRating(),
        ],
      ),
    );
  }
}
