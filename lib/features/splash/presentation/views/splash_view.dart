import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/constants/app_duration.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late Animation<Offset> slideAnimation;
  late Animation<double> fadeAnimation;
  late Animation<double> fadeAnimationText;
  late final AnimationController _controller;
  late final AnimationController _animationController;

  @override
  void initState() {
    initController();
    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: AnimatedLogo()));
  }

  Widget AnimatedLogo() {
    return Stack(
      alignment: Alignment.center,
      children: [
        // LOGO
        SlideTransition(
          position: slideAnimation,
          child: RepaintBoundary(
            child: FadeTransition(
              opacity: fadeAnimation,
              child: context.isdarkMode
                  ? Image.asset(AppImages.darkModeLogo)
                  : Image.asset(AppImages.lightModeLogo),
            ),
          ),
        ),

        Positioned(
          bottom: 30,
          child: RepaintBoundary(
            child: FadeTransition(
              opacity: fadeAnimationText,
              child: Text(
                'Stay fit, Stay you',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: context.isdarkMode
                      ? AppColors.darkModeLogoColor
                      : AppColors.lightModeLogoColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void initController() {
    _controller = AnimationController(
      vsync: this,
      duration: AppDuration.kDurationLogo,
    );
    _animationController = AnimationController(
      vsync: this,
      duration: AppDuration.kDurationSolgan,
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.4),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    fadeAnimationText = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);

    _controller.forward();
    _animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(AppDuration.kDurationSolgan, () {
      context.go(AppRoutes.pageView);
    });
  }
}
