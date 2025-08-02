import 'package:crypto_helper/app/app.dart';
import 'package:crypto_helper/di/di_container.dart';
import 'package:crypto_helper/features/error/error_screen.dart';
import 'package:crypto_helper/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class AppRunner {
  late GoRouter _router;

  Future<void> _initApp() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Инициализация роутера
    _router = AppRouter.createRouter();

    // Запрет на поворот экрана
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // Заморозка первого кадра (сплеш)
    WidgetsBinding.instance.deferFirstFrame();
  }

  /// Метод срабатывает после запуска приложения
  Future<void> _onAppLoaded() async {
    // Разморозка первого кадра (сплеш)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.allowFirstFrame();
    });
  }

  void run() async {
    try {
      await _initApp();

      runApp(App(router: _router, initDependencies: DiContainer.createAndInitDevDiContainer));
      await _onAppLoaded();
    } catch (e, stackTrace) {
      await _onAppLoaded();
      runApp(ErrorScreen(error: e, stackTrace: stackTrace, onRetry: run));
    }
  }
}
