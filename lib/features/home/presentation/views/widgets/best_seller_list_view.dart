import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widget/error_widget.dart';
import '../../view_models/fetch_best_seller_cubit/fetch_best_seller_cubit.dart';
import 'best_seller_book_list_shimmer.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBestSellerCubit, FetchBestSellerState>(
        builder: (context, state) {
      if (state is FetchBestSellerSuccess) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.books.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                GoRouter.of(context).pushNamed(AppRoutNamed.bookDetails,
                    extra: state.books[index]);
              },
              child: BestSellerItem(
                book: state.books[index],
              )),
        );
      } else if (state is FetchBestSellerLoading) {
        return BestSellerBookListShimmer();
      } else if (state is FetchBestSellerFailure) {
        return CustomErrorWidget(errorMessage: state.error);
      }
      return const Text('');
    });
  }
}
