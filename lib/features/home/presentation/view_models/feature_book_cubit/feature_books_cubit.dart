import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit({required this.homeRepo}) : super(FeatureBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FetchFeatureLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((success) {
      emit(FetchFeatureSuccess(books: success));
    }, (failure) {
      emit(FetchFeatureFailure(error: failure.errorMessage));
    });
  }
}
