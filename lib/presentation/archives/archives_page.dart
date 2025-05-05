import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/archives/archives_bloc.dart';
import 'package:sora/injection.dart';
import 'package:sora/presentation/archives/archives_layout.dart';
import 'package:sora/utils/palette.dart';

@RoutePage()
class ArchivesPage extends StatelessWidget {
  const ArchivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: BlocProvider(
        create:
            (context) => getIt<ArchivesBloc>()..add(const ArchivesEvent.init()),
        child: const SafeArea(child: ArchivesLayout()),
      ),
    );
  }
}
