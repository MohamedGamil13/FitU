import 'package:fitu/core/routes/router_name.dart';
import 'package:fitu/features/Auth/presentation/views/register_view.dart';
import 'package:fitu/features/Auth/presentation/views/reset_password_view.dart';
import 'package:fitu/features/Auth/presentation/views/sign_in_view.dart';
import 'package:fitu/features/Auth/presentation/views/sign_up_view.dart';
import 'package:fitu/features/home/presentation/views/home_view.dart';
import 'package:fitu/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fitu/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splashView,

  routes: [
    GoRoute(
      path: AppRoutes.splashView,
      builder: (context, state) => const SplashView(),
    ),

    GoRoute(
      path: AppRoutes.homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: AppRoutes.pageView,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: AppRoutes.registerView,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: AppRoutes.signUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: AppRoutes.signInView,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: AppRoutes.resetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
  ],
);
