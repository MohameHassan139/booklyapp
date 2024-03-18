import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'feature_listview_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              GoRouter.of(context).pushNamed(AppRoutNamed.bookDetails);
              print('hello @@@@@');
            },
            child: const CustomBookImage()),
      ),
    );
  }
}
