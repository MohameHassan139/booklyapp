import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/colors.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
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
          ),
        ),
      ),
    );
  }
}
