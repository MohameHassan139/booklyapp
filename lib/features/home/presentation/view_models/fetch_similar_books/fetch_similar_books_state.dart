part of 'fetch_similar_books_cubit.dart';

sealed class FetchSimilarBooksState {
  const FetchSimilarBooksState();

  @override
  List<Object> get props => [];
}

final class FetchSimilarBooksInitial extends FetchSimilarBooksState {}

final class FetchSimilarLoading extends FetchSimilarBooksState {}

final class FetchSimilarFailure extends FetchSimilarBooksState {
  final String error;
  const FetchSimilarFailure({required this.error});
}

final class FetchSimilarSuccess extends FetchSimilarBooksState {
  final BookModels books;
  const FetchSimilarSuccess({required this.books});
}
