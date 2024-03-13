import 'package:booklyapp/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    initAnimation();
    nivgateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        const SizedBox(
          height: 20,
        ),
        AnimatedBuilder(
            animation: animation,
            builder: (context, _) {
              animation.addListener(
                () {
                  setState(() {});
                },
              );
              return AnimatedOpacity(
                opacity: animationController.value,
                duration: const Duration(seconds: 3),
                child: SlideTransition(
                  position: animation,
                  child: const Text(
                    'Read Free Books',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
      ],
    );
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }

  void nivgateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacementNamed(
          AppRoutNamed.homeView,
        );
      },
    );
  }
}
