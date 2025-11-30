import 'package:firebase_core/firebase_core.dart';
import 'package:fitu/core/config/themes/Theme_cubit/theme_cubit.dart';
import 'package:fitu/core/config/themes/dark_mode.dart';
import 'package:fitu/core/config/themes/light_mode.dart';
import 'package:fitu/core/di/app_locator.dart';
import 'package:fitu/core/routes/app_router.dart';
import 'package:fitu/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(FitU());
}

class FitU extends StatelessWidget {
  const FitU({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: appRouter,
            debugShowCheckedModeBanner: false,
            title: "Fit U",
            theme: getLightMode(),
            darkTheme: getDarkMode(),
            themeMode: state,
          );
        },
      ),
    );
  }
}
