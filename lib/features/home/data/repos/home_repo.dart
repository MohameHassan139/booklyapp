import 'package:booklyapp/core/errors/failures.dart';

import 'package:dartz/dartz.dart';

import '../models/book_models/book_models.dart';

abstract class HomeRepo {
  Future<Either<BookModels, Failuer>> fetchBestSellerBooks();
  Future<Either<BookModels, Failuer>> fetchFeatureBooks();
  Future<Either<BookModels, Failuer>> fetchSimilarBooks(
      {required String category});
}
