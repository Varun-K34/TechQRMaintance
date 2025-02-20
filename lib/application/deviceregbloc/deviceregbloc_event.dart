part of 'deviceregbloc_bloc.dart';

@freezed
class DeviceregblocEvent with _$DeviceregblocEvent {
  const factory DeviceregblocEvent.regDevice({required DeviceRegModel model}) =
      RegDevice;
}
