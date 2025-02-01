import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failurs.freezed.dart';

@freezed
class MainFailurs with _$MainFailurs {
  const factory MainFailurs.clientFailure() = _clientFailure;
  const factory MainFailurs.serverFailure() = _serverFailure;
}
