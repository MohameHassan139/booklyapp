import 'package:bloc/bloc.dart';

import '../../../../home/data/models/book_models/book_models.dart';
import '../../../data/repos/search_repo.dart';

part 'fetch_search_books_state.dart';

class FetchSearchBooksCubit extends Cubit<FetchSearchBooksState> {
  FetchSearchBooksCubit({required this.searchRepo})
      : super(FetchSearchBooksInitial());

  SearchRepo searchRepo;
  Future<void> search({required String category}) async {
    emit(FetchSearchLoading());
    var result = await searchRepo.fetchSearchedrBooks(category: category);
    result.fold((success) {
      emit(FetchSearchSuccess(books: success));
    }, (failure) {
      emit(FetchSearchFailure(error: failure.errorMessage));
    });
  }
}
