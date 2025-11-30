import 'package:fitu/core/di/app_locator.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:fitu/features/Auth/data/repos/auth_repo.dart';
import 'package:fitu/features/Auth/presentation/view_model/cubit/sign_in_with_google_cubit.dart';
import 'package:fitu/features/Auth/presentation/views/register_view.dart';
import 'package:fitu/features/Auth/presentation/views/reset_password_view.dart';
import 'package:fitu/features/Auth/presentation/views/sign_in_view.dart';
import 'package:fitu/features/Auth/presentation/views/sign_up_view.dart';
import 'package:fitu/features/home/presentation/views/home_view.dart';
import 'package:fitu/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fitu/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (context, state) => BlocProvider(
        create: (context) => SignInWithGoogleCubit(locator<AuthRepository>()),
        child: const RegisterView(),
      ),
    ),
    GoRoute(
      path: AppRoutes.signUpView,
      builder: (context, state) => BlocProvider(
        create: (context) => SignInWithGoogleCubit(locator<AuthRepository>()),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: AppRoutes.signInView,
      builder: (context, state) => BlocProvider(
        create: (context) => SignInWithGoogleCubit(locator<AuthRepository>()),
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: AppRoutes.resetPasswordView,
      builder: (context, state) => BlocProvider(
        create: (context) => SignInWithGoogleCubit(locator<AuthRepository>()),
        child: const ResetPasswordView(),
      ),
    ),
  ],
);
