import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/value_failure.dart';
import 'package:sora/domain/core/value_object.dart';
import 'package:sora/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

class UniqueID extends ValueObject<String> {
  factory UniqueID() {
    return UniqueID._(Ok(const Uuid().v4()));
  }

  factory UniqueID.fromUniqueString(String uidStr) {
    return UniqueID._(validateNotEmpty(uidStr));
  }

  const UniqueID._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
