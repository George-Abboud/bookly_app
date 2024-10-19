import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var resault = await homeRepo.fetchFeaturedBooks();
    resault.fold(
      (failure) {
        emit(
          NewestBooksFailure(
            errorMessage: failure.errMessage,
          ),
        );
      },
      (books) {
        emit(
          NewestBooksSuccess(
            books: books,
          ),
        );
      },
    );
  }
}
