import 'package:bloc/bloc.dart';

import '../../../data/models/book_models/book_models.dart';
import '../../../data/repos/home_repo.dart';

part 'fetch_best_seller_state.dart';

class FetchBestSellerCubit extends Cubit<FetchBestSellerState> {
  FetchBestSellerCubit({required this.homeRepo})
      : super(FetchBestSellerInitial());
  HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(FetchBestSellerLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((success) {
      emit(FetchBestSellerSuccess(books: success));
    }, (failure) {
      emit(FetchBestSellerFailure(error: failure.errorMessage));
    });
  }
}
