part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.init() = Init;

  const factory HistoryEvent.itemsCounted(int count) = ItemsCounted;

  const factory HistoryEvent.openInNewPressed(DownloadInfo downloadInfo) =
      OpenInNewPressed;
}
