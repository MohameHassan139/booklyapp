import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<List<BookModel>, Failuer>> fetchBestSellerBooks();
  Future<Either<List<BookModel>, Failuer>> fetchFeatureBooks();
  Future<Either<List<BookModel>, Failuer>> fetchSimilarBooks(
      {required String category});
}
