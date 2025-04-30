import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/dashboard/dashboard_cubit.dart';
import 'package:sora/injection.dart';
import 'package:sora/presentation/dashboard/dashboard_layout.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<DashboardCubit>(),
        child: SafeArea(child: DashboardLayout()),
      ),
    );
  }
}
