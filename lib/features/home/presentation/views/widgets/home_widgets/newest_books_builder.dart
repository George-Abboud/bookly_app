import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/newest_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksBuilder extends StatelessWidget {
  const NewestBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return NewestBooksListView(
            books: state.books,
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomError(errorMessage: state.errorMessage));
        } else {
          return const SliverToBoxAdapter(child: CustomProgressIndicator());
        }
      },
    );
  }
}
