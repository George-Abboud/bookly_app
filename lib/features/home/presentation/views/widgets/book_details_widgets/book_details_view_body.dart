import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              SizedBox(
                height: 16,
              ),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 32,
                ),
              ),
              SimilarBooksSection(),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        )
      ],
    );
  }
}
