import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/book_item.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class ResultBooks extends StatelessWidget {
  const ResultBooks({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    if (books.isEmpty) {
      return const SliverFillRemaining(
        child: Center(
          child: Text(
            'Not Found',
            style: Styles.textStyle18,
          ),
        ),
      );
    } else {
      return SliverList.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 36),
            child: BookItem(book: books[index]),
          );
        },
      );
    }
  }
}
