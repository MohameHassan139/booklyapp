import 'dart:math';

import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<List<BookModel>, Failuer>> fetchBestSellerBooks() async {
    try {
      var data = await ApiService.api.get(
          quray:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
      return left(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return right(ServerFailuer.fromDioError(dioException: e));
      }
    }
    return right(ServerFailuer(errorMessage: e.toString()));
  }

  @override
  Future<Either<List<BookModel>, Failuer>> fetchFeatureBooks() async {
    try {
      var data = await ApiService.api
          .get(quray: 'volumes?Filtering=free-ebooks&q=subject:business');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
      return left(books);
    } on Exception catch (e) {
      if (e is DioException)
        return right(ServerFailuer.fromDioError(dioException: e));
    }
    return right(ServerFailuer(errorMessage: e.toString()));
  }
}
