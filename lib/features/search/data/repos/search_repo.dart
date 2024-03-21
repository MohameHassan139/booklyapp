import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<BookModels, Failuer>> fetchSearchedrBooks(
      {required String category});
}
