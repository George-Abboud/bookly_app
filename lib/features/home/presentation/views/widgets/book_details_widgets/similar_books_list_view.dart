import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/similar_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SimilarBookItem(
              book: books[index], padding: formatPadding(index));
        },
      ),
    );
  }

  EdgeInsets formatPadding(int index) {
    return index == 0
        ? const EdgeInsets.only(left: 24, right: 6)
        : index == books.length - 1
            ? const EdgeInsets.only(left: 6, right: 24)
            : const EdgeInsets.symmetric(horizontal: 6);
  }
}
