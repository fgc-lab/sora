import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sora/injection.dart';
import 'package:sora/presentation/core/app.dart';
import 'package:sora/sora_bloc_observer.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await configureInjection();

  Bloc.observer = SoraBlocObserver();

  runApp(App());
}
