import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/value_failure.dart';
import 'package:sora/domain/core/value_object.dart';
import 'package:sora/domain/core/value_validators.dart';

class NonEmptyString extends ValueObject<String> {
  factory NonEmptyString(String input) {
    return NonEmptyString._(validateNotEmpty(input));
  }

  const NonEmptyString._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
