import 'package:booklyapp/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.cover,
      image: NetworkImage(imageUrl),
      loadingBuilder: (context, child, loadingProgress) =>
          loadingProgress != null
              ? Shimmer.fromColors(
                  baseColor: AppColors.KshimmerBaseColor,
                  highlightColor: AppColors.KshimmerHighlightColor,
                  child: Container(
                    color: Colors.grey,
                  ),
                )
              : child,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey,
          child: const Icon(
            Icons.error,
            size: 40,
            color: Colors.red,
          ),
        );
      },
    );
  }
}
