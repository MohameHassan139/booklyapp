import 'package:booklyapp/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';

import 'best_seller_list_view.dart';
import 'feature_listview.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppbar(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomListview(),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Best Selles',
                      style: Styles.textStyle18,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BestSellerListView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
