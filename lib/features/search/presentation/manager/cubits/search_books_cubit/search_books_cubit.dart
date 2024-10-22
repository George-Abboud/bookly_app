import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;

  Future<void> searchBooks({required String searchBooks}) async {
    emit(SearchBooksLoading());
    var resault = await searchRepo.searchBooksResault(searchBooks: searchBooks);
    resault.fold(
      (failure) {
        emit(
          SearchBooksFailure(
            errorMessage: failure.errMessage,
          ),
        );
      },
      (books) {
        emit(
          SearchBooksSuccess(
            books: books,
          ),
        );
      },
    );
  }
}
