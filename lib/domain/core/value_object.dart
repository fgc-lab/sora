import 'package:equatable/equatable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/unexpected_value_error.dart';
import 'package:sora/domain/core/value_failure.dart';

abstract class ValueObject<T extends Object> extends Equatable {
  const ValueObject();

  Result<T, ValueFailure<T>> get value;

  T getOrCrash() =>
      value.match((ok) => ok, (err) => throw UnexpectedValueError(err));

  T? getOrNull() => value.match((ok) => ok, (err) => null);

  Result<Unit, ValueFailure<dynamic>> get failureOrUnit =>
      value.match((_) => const Ok(unit), Err.new);

  bool get isValid => value.isOk();

  @override
  List<Object?> get props => [value];

  @override
  bool get stringify => true;
}
