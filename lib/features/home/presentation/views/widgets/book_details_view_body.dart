import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .18 + 24),
                child: const ImageItem(),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: kHorizontalPadding,
                child: Text(
                  'Harry Potter',
                  style: Styles.textStyle30.copyWith(fontFamily: kGTSectraFine),
                ),
              ),
              Padding(
                padding: kHorizontalPadding,
                child: Text(
                  'David Martin',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.white.withOpacity(.7),
                  ),
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
              const Expanded(
                child: SizedBox(
                  height: 32,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: kHorizontalPadding,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const SimilarBooksListView(),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ImageItem(
            padding: formatPadding(index),
          );
        },
      ),
    );
  }

  EdgeInsets formatPadding(int index) {
    return index == 0
        ? const EdgeInsets.only(left: 24, right: 6)
        : index == 29
            ? const EdgeInsets.only(left: 6, right: 24)
            : const EdgeInsets.symmetric(horizontal: 6);
  }
}
