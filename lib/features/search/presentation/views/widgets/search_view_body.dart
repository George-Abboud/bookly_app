import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/search/presentation/manager/cubits/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/resault_books_list_view.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        SearchBooksBuilder(),
      ],
    );
  }
}

class SearchBooksBuilder extends StatelessWidget {
  const SearchBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ResultBooks(
            books: state.books,
          );
        } else if (state is SearchBooksFailure) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                'SomeThing wrong, try again later',
                style: Styles.textStyle18.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          );
        } else if (state is SearchBooksLoading) {
          return const SliverFillRemaining(
            child: CustomProgressIndicator(),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: Text(
                'Search For New Books!',
                style: Styles.textStyle18,
              ),
            ),
          );
        }
      },
    );
  }
}
