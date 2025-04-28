import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/home/home_bloc.dart';
import 'package:sora/injection.dart';
import 'package:sora/presentation/home/home_layout.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>()..add(const HomeEvent.init()),
        child: SafeArea(child: HomeLayout()),
      ),
    );
  }
}
