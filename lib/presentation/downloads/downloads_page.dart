import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/downloads/downloads_bloc.dart';
import 'package:sora/injection.dart';
import 'package:sora/presentation/downloads/downloads_layout.dart';
import 'package:sora/utils/palette.dart';

@RoutePage()
class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: BlocProvider(
        create:
            (context) =>
                getIt<DownloadsBloc>()..add(const DownloadsEvent.init()),
        child: const SafeArea(child: DownloadsLayout()),
      ),
    );
  }
}
