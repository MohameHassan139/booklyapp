import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        name: AppRoutes.homeView,
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}

class AppRoutes {
  static const String homeView = '/homeView';
}
