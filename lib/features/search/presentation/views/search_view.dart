import 'package:flutter/material.dart';

import 'widgets/search_body_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSearchBody(),
    );
  }
}
