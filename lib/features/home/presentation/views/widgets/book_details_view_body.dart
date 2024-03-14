import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widget/custom_bottom.dart';
import 'book_action.dart';
import 'custom_book_details_appbar.dart';
import 'feature_listview_item.dart';
import 'package:lottie/lottie.dart';

import 'similar_book_list_view.dart';

class BookViewDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAppBarBookDetails(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .2),
                    child: CustomBookImage(),
                  ),
                  SizedBox(
                    height: 43,
                  ),
                  Text(
                    'The Tungle Book',
                    style: Styles.textStyle30,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      'Rudyary Kipling',
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  BookAction(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "you can also like",
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SimilarBookListView(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
