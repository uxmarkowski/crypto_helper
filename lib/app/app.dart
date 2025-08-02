import 'package:crypto_helper/app/depends_providers.dart';
import 'package:crypto_helper/di/di_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../features/error/error_screen.dart';
import '../features/splash/splash_screen.dart';

class App extends StatefulWidget {
  final GoRouter _router;
  final Future<DiContainer> Function() initDependencies;
  const App({super.key, required router, required this.initDependencies}) : _router = router;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  late Future<DiContainer> _initFuture;

  @override
  void initState() {
    super.initState();
    _initFuture = widget.initDependencies();
  }

  void _retryInit() {
    setState(() {
      _initFuture = widget.initDependencies();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initFuture,
      builder: (_, snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.none:
        case ConnectionState.waiting:
        case ConnectionState.active:
        // Пока инициализация показываем Splash
          return const SplashScreen();
        case ConnectionState.done:
          if (snapshot.hasError) {
            return ErrorScreen(
              error: snapshot.error,
              stackTrace: snapshot.stackTrace,
              onRetry: _retryInit,
            );
          }

          final diContainer = snapshot.data;
          if (diContainer == null) {
            return ErrorScreen(
              error: 'Ошибка инициализации зависимостей, diContainer = null',
              stackTrace: null,
              onRetry: _retryInit,
            );
          }

          return DependsProviders(
              diContainer: diContainer,
              child: _App(router: widget._router)
          );
      }
    },
    );
  }
}

class _App extends StatelessWidget {
  const _App({required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

