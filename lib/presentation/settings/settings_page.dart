import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/settings/settings_bloc.dart';
import 'package:sora/injection.dart';
import 'package:sora/presentation/settings/settings_layout.dart';
import 'package:sora/utils/palette.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: BlocProvider(
        create:
            (context) => getIt<SettingsBloc>()..add(const SettingsEvent.init()),
        child: const SafeArea(child: SettingsLayout()),
      ),
    );
  }
}
