import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'fetch_similar_books_state.dart';

class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit({required this.homeRepo})
      : super(FetchSimilarBooksInitial());

  HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(FetchSimilarLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((success) {
      emit(FetchSimilarSuccess(books: success));
    }, (failure) {
      emit(FetchSimilarFailure(error: failure.errorMessage));
    });
  }
}
