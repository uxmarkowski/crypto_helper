import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/di_container.dart';

final class DependsProviders extends StatelessWidget {
  const DependsProviders({
    required this.child,
    required this.diContainer,
    super.key,
  });

  final Widget child;
  final DiContainer diContainer;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: diContainer),
      ],
      child: child,
    );
  }
}
