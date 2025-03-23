part of 'tech_perfomence_bloc.dart';

@freezed
class TechPerfomenceEvent with _$TechPerfomenceEvent {
  const factory TechPerfomenceEvent.getTechPerfomance(
      {required String techid}) = GetTechPerfomance;
}
