import 'package:booklyapp/core/widget/custom_image_loading.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/colors.dart';

class CustomBookListShimmer extends StatelessWidget {
  const CustomBookListShimmer({
    super.key,
    this.ScreenHeight = 0.3,
  });
  final double ScreenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * ScreenHeight,
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
