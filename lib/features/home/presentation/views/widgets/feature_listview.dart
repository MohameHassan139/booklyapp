import 'package:booklyapp/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/widget/error_widget.dart';
import '../../view_models/feature_book_cubit/feature_books_cubit.dart';
import '../../../../../core/widget/custom_image_loading.dart';
import 'best_seller_book_list_shimmer.dart';
import 'feature_book_list_shimmer.dart';
import 'feature_listview_item.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FetchFeatureSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutNamed.bookDetails);
                  },
                  child: const CustomBookImage()),
            ),
          );
        } else if (state is FetchFeatureFailure) {
          return CustomErrorWidget(errorMessage: state.error);
        } else if (state is FetchFeatureLoading) {
          return const FeatureBookListShimmer();
        }
        return Text('fuck');
      },
    );
  }
}
