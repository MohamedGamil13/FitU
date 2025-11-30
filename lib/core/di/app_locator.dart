import 'package:fitu/features/Auth/data/repos/auth_repo.dart';
import 'package:fitu/features/Auth/data/services/google_auth_service.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  locator.registerLazySingleton<GoogleAuthService>(() => GoogleAuthService());

  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepository(locator<GoogleAuthService>()),
  );
}
