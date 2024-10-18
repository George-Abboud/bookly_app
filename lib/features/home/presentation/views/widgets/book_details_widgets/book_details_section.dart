import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: kHorizontalPadding,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: const ImageItem(),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Harry Potter',
            style: Styles.textStyle30.copyWith(fontFamily: kGTSectraFine),
          ),
          Text(
            'David Martin',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.white.withOpacity(.7),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(
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
