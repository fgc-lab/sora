import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sora/application/settings/settings_bloc.dart';

class SettingsLayout extends StatelessWidget {
  const SettingsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 7.5, top: 7.5, bottom: 7.5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
                  return Center(child: Text('Settings'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
