import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/book_rating.dart';
import 'package:bookly_app/core/widgets/image_item.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_action.dart';

import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: kHorizontalPadding,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: ImageItem(
              image: book.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            textAlign: TextAlign.center,
            book.volumeInfo.title,
            style: Styles.textStyle30.copyWith(fontFamily: kGTSectraFine),
          ),
          Text(
            book.volumeInfo.authors?[0] ?? 'unknown',
            style: Styles.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.white.withOpacity(.7),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          BookRating(
            averageRating: book.volumeInfo.averageRating!,
            ratingCount: book.volumeInfo.ratingsCount!,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const BookAction(),
        ],
      ),
    );
  }
}
