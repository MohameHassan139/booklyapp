import 'package:booklyapp/features/search/presentation/view_models/fetch_search_books/fetch_search_books_cubit.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/custom_textformfield.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchBody extends StatelessWidget {
  CustomSearchBody({super.key});

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomTextFormField(
              labelText: 'search',
              textController: searchController,
              suffix: IconButton(
                onPressed: () {
                  BlocProvider.of<FetchSearchBooksCubit>(context)
                      .search(category: searchController.text);
                },
                icon: const Icon(
                  Icons.search,
                ),
              ),
              onChange: (text) {
                if (text.isNotEmpty) {
                  BlocProvider.of<FetchSearchBooksCubit>(context)
                      .search(category: text);
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: SearchListView()),
          ],
        ),
      ),
    );
  }
}
