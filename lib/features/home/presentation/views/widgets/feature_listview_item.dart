import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).pushNamed(AppRoutNamed.bookDetails);
        },
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://th.bing.com/th/id/OIF.qF6RCkujtxhb1834uyeyxQ?rs=1&pid=ImgDetMain",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
