import 'package:booklyapp/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/view_models/feature_book_cubit/feature_books_cubit.dart';
import 'features/home/presentation/view_models/fetch_best_seller_cubit/fetch_best_seller_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => FetchBestSellerCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.KprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        // home: SplashView(),
        routerConfig: AppRouter.router,
      ),
    );
  }
}

// GoRouter configuration
