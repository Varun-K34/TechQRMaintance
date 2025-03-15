part of 'model_and_brand_bloc.dart';

@freezed
class ModelAndBrandState with _$ModelAndBrandState {
  // For data
  const factory ModelAndBrandState({
    required List<DeviceModelsModel> modelList,
    required bool isLoading,
    required bool isFailure,
  }) = _BrandState;

  // Initial setup
  factory ModelAndBrandState.initial() {
    return ModelAndBrandState(
      modelList: [],
      isLoading: false,
      isFailure: false,
    );
  }
}
