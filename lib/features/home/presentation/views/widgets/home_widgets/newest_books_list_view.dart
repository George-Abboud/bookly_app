import 'package:bookly_app/core/utils/widgets/book_item.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 36),
          child: BookItem(
            book: books[index],
          ),
        );
      },
    );
  }
}
