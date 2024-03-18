import 'package:booklyapp/core/widget/custom_image_loading.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/colors.dart';

class FeatureBookListShimmer extends StatelessWidget {
  const FeatureBookListShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Shimmer.fromColors(
        baseColor: AppColors.KshimmerBaseColor,
        highlightColor: AppColors.KshimmerHighlightColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => const CustomImageLoading(),
        ),
      ),
    );
  }
}
