import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemBuilder: (context, index) => InkWell(
          onTap: () {
            GoRouter.of(context).pushNamed(AppRoutNamed.bookDetails);
          },
          child: BestSellerItem()),
    );
  }
}
