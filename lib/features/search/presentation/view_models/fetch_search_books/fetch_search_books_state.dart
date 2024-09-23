part of 'fetch_search_books_cubit.dart';

sealed class FetchSearchBooksState {
  const FetchSearchBooksState();

  @override
  List<Object> get props => [];
}

final class FetchSearchBooksInitial extends FetchSearchBooksState {}

final class FetchSearchLoading extends FetchSearchBooksState {}

final class FetchSearchFailure extends FetchSearchBooksState {
  final String error;
  const FetchSearchFailure({required this.error});
}

final class FetchSearchSuccess extends FetchSearchBooksState {
  final BookModels books;
  const FetchSearchSuccess({required this.books});
}
