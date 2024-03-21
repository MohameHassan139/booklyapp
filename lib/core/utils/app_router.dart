import 'package:booklyapp/core/utils/service_locator.dart';

import 'package:booklyapp/features/home/data/models/book_models/item.dart';
import 'package:booklyapp/features/home/presentation/view_models/fetch_similar_books/fetch_similar_books_cubit.dart';
import 'package:booklyapp/features/search/data/repos/search_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/presentation/views/book_detials_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/view_models/fetch_search_books/fetch_search_books_cubit.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      // SearchView
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        name: AppRoutNamed.bookDetails,
        path: AppRoutNamed.bookDetails,
        builder: (context, state) => BlocProvider<FetchSimilarBooksCubit>(
          create: (context) => FetchSimilarBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            book: state.extra as Item,
          ),
        ),
      ),
      customGoRoute(
        name: AppRoutNamed.homeView,
        path: AppRoutNamed.homeView,
        child: const HomeView(),
      ),
      customGoRoute(
        name: AppRoutNamed.SearchView,
        path: AppRoutNamed.SearchView,
        child: BlocProvider<FetchSearchBooksCubit>(
          create: (context) => FetchSearchBooksCubit(
            searchRepo: getIt.get<SearchRepoImpl>(),
          ),
          child: SearchView(),
        ),
      ),
    ],
  );

  static GoRoute customGoRoute({
    required String path,
    required String name,
    required Widget child,
  }) {
    return GoRoute(
      path: path,
      name: name,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Change the opacity of the screen using a Curve based on the the animation's
            // value
            const begin = Offset(1.0, 1.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      },
    );
  }
}

class AppRoutNamed {
  static const String homeView = '/homeView';
  static const String bookDetails = '/bookDetails';
  static const String SearchView = '/SearchView';
}
