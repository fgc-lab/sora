import 'package:oxidized/oxidized.dart';
import 'package:sora/domain/core/value_failure.dart';
import 'package:string_validator/string_validator.dart';

Result<String, ValueFailure<String>> validateNotEmpty(String input) {
  if (trim(input).isNotEmpty) {
    return Ok(input);
  }
  return Err(ValueFailure.empty(input));
}

Result<String, ValueFailure<String>> validateURL(String input) {
  if (input.isEmpty) {
    return Result.err(ValueFailure.empty(input));
  }
  if (!input.isURL()) {
    return Result.err(ValueFailure.invalidURL(input));
  }
  return Result.ok(input);
}
