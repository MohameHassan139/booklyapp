import 'package:flutter/material.dart';

import 'feature_listview_item.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => const CustomListViewItem(),
      ),
    );
  }
}
