import 'package:booklyapp/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'best_seller_item_loading.dart';

class BestSellerBookListShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.KshimmerBaseColor,
      highlightColor: AppColors.KshimmerHighlightColor,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3, // Number of shimmer items
        itemBuilder: (context, index) {
          return BestSellerItemLoading();
        },
      ),
    );
  }
}
