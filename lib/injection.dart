import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sora/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async => getIt.init();
