import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/widgets/book_item_details.dart';
import 'package:bookly_app/core/utils/widgets/image_item.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHorizontalPadding,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
        },
        child: SizedBox(
          height: 144,
          child: Row(
            children: [
              ImageItem(
                image: book.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              const SizedBox(
                width: 24,
              ),
              BookItemDetails(
                book: book,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
