import 'package:booklyapp/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_listview.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            CustomListview(),
            SizedBox(
              height: 50,
            ),
            Text(
              'Best Selles',
              style: Styles.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
