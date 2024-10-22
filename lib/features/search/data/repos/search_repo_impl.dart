import 'dart:developer';

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> searchBooksResault(
      {required String searchBooks}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:$searchBooks&Sorting=newest');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }

      return right(books);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromDioError(
          e,
        ),
      );
    } on Exception catch (e) {
      log(
        e.toString(),
      );
      return Left(
        ServerFailure(
          errMessage: 'Oops there was an error, try again later',
        ),
      );
    }
  }
}
