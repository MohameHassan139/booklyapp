import 'dart:math';

import 'package:booklyapp/core/errors/failures.dart';

import 'package:booklyapp/features/home/data/models/book_models/book_models.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:booklyapp/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  @override
  Future<Either<BookModels, Failuer>> fetchSearchedrBooks(
      {required String category}) async {
    try {
      var data = await ApiService.api.get(
          quray:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$category');
      BookModels books = BookModels.fromJson(data);
      return left(books);
    } catch (e) {
      if (e is DioException) {
        return right(ServerFailuer.fromDioError(dioException: e));
      }
    }
    return right(ServerFailuer(errorMessage: e.toString()));
  }
}
