import 'package:flutter/material.dart';
import 'package:sora/presentation/routes/router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (_, router) => router!,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: 'Sora',
    );
  }
}
