part of 'fetch_best_seller_cubit.dart';

sealed class FetchBestSellerState extends Equatable {
  const FetchBestSellerState();

  @override
  List<Object> get props => [];
}

final class FetchBestSellerInitial extends FetchBestSellerState {}

final class FetchBestSellerLoading extends FetchBestSellerState {}

final class FetchBestSellerFailure extends FetchBestSellerState {
  final String error;
  const FetchBestSellerFailure({required this.error});
}

final class FetchBestSellerSuccess extends FetchBestSellerState {
  final BookModels books;
  const FetchBestSellerSuccess({required this.books});
}
