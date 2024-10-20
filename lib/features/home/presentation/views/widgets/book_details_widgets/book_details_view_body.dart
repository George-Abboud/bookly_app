import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
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
              BookDetailsSection(
                book: book,
              ),
              const Expanded(
                child: SizedBox(
                  height: 32,
                ),
              ),
              const SimilarBooksSection(),
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
