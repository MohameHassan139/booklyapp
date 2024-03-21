import 'package:booklyapp/core/widget/error_widget.dart';
import 'package:booklyapp/features/home/presentation/view_models/fetch_similar_books/fetch_similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'feature_book_list_shimmer.dart';
import 'feature_listview_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: BlocBuilder<FetchSimilarBooksCubit, FetchSimilarBooksState>(
        builder: (context, state) {
          if (state is FetchSimilarSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  GoRouter.of(context).pushNamed(AppRoutNamed.bookDetails,
                      extra: state.books[index]);
                },
                child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              ),
            );
          } else if (state is FetchSimilarLoading) {
            return const CustomBookListShimmer(
              ScreenHeight: 0.16,
            );
          } else if (state is FetchSimilarFailure) {
            CustomErrorWidget(errorMessage: state.error);
          }
          return const Text('');
        },
      ),
    );
  }
}
