import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookItemDetails extends StatelessWidget {
  const BookItemDetails({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: Text(
              book.volumeInfo.title,
              style: Styles.textStyle18.copyWith(fontFamily: kGTSectraFine),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            book.volumeInfo.authors[0],
            style: Styles.textStyle12.copyWith(
              color: Colors.white.withOpacity(.7),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Text(
                'Free',
                style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              BookRating(
                averageRating: book.volumeInfo.averageRating!,
                ratingCount: book.volumeInfo.ratingsCount!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
