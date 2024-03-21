import 'package:booklyapp/features/search/presentation/view_models/fetch_search_books/fetch_search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widget/error_widget.dart';
import '../../../../home/presentation/views/widgets/best_seller_book_list_shimmer.dart';
import '../../../../home/presentation/views/widgets/best_seller_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchBooksCubit, FetchSearchBooksState>(
        builder: (context, state) {
      if (state is FetchSearchSuccess) {
        if (state.books.items != null || state.books.totalItems != 0) {
          return ListView.separated(
            itemCount: state.books.items?.length ?? 0,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemBuilder: (context, index) => InkWell(
                onTap: () {
                  GoRouter.of(context).pushNamed(AppRoutNamed.bookDetails,
                      extra: state.books.items![index]);
                },
                child: BestSellerItem(
                  book: state.books.items![index],
                )),
          );
        }
        return const Center(
            child: Text(
          'No Reslute',
          style: Styles.textStyle30,
        ));
      } else if (state is FetchSearchLoading) {
        return const BestSellerBookListShimmer();
      } else if (state is FetchSearchFailure) {
        return CustomErrorWidget(errorMessage: state.error);
      }
      return const Center(
          child: Text(
        'Welcome',
        style: Styles.textStyle30,
      ));
    });
  }
}
