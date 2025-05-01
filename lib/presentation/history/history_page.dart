import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/history/history_bloc.dart';
import 'package:sora/injection.dart';
import 'package:sora/presentation/history/history_layout.dart';
import 'package:sora/utils/palette.dart';

@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: BlocProvider(
        create:
            (context) => getIt<HistoryBloc>()..add(const HistoryEvent.init()),
        child: const SafeArea(child: HistoryLayout()),
      ),
    );
  }
}
