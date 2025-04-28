import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/value_failure.dart';
import 'package:sora/domain/core/value_object.dart';
import 'package:sora/domain/core/value_validators.dart';

class URL extends ValueObject<String> {
  factory URL(String input) {
    return URL._(validateURL(input));
  }

  const URL._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
