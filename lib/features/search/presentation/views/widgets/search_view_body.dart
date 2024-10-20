import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/resault_books_list_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTextField(),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: kHorizontalPadding,
                child: Text(
                  'Search Resault',
                  style: Styles.textStyle16,
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
        ResaultBooks(),
      ],
    );
  }
}
