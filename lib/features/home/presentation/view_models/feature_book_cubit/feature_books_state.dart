part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FetchFeatureLoading extends FeatureBooksState {}

final class FetchFeatureFailure extends FeatureBooksState {
  final String error;
  const FetchFeatureFailure({required this.error});
}

final class FetchFeatureSuccess extends FeatureBooksState {
  final BookModels books;
  const FetchFeatureSuccess({required this.books});
}
