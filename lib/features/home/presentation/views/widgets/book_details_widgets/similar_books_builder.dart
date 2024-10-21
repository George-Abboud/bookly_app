import 'package:bookly_app/core/utils/widgets/custom_error.dart';
import 'package:bookly_app/core/utils/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/similar_books_cubit.dart/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksBuilder extends StatelessWidget {
  const SimilarBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SimilarBooksListView(
            books: state.books,
          );
        } else if (state is SimilarBooksFailure) {
          return CustomError(errorMessage: state.errorMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
