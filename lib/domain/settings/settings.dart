import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/domain/core/unique_id.dart';

part 'settings.freezed.dart';

@freezed
sealed class Settings with _$Settings {
  const factory Settings({
    required UniqueID uid,
    required Map<String, dynamic> config,
    required bool darkMode,
    DateTime? updatedAt,
  }) = _Settings;

  factory Settings.empty() =>
      Settings(uid: UniqueID(), config: {}, darkMode: false);
}
