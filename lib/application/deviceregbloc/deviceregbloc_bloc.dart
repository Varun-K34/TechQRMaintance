import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'deviceregbloc_event.dart';
part 'deviceregbloc_state.dart';
part 'deviceregbloc_bloc.freezed.dart';

@injectable
class DeviceregblocBloc extends Bloc<DeviceregblocEvent, DeviceregblocState> {
  DeviceregblocBloc() : super(_Initial()) {
    on<DeviceregblocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
