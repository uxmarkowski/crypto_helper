import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../features/coins_list/presentation/screen_view/coins_list_screen.dart';
import '../features/splash/splash_screen.dart';

class AppRouter {
  const AppRouter();

  /// Ключ для доступа к корневому навигатору приложения
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  /// Начальный роут приложения
  static String get initialLocation => '/coins_list';

  /// Метод для создания экземпляра GoRouter
  static GoRouter createRouter() {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: initialLocation,
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/coins_list',
          builder: (context, state) => const CoinsListScreen(),
        ),
      ],
    );
  }
}
