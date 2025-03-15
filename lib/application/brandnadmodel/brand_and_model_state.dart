part of 'brand_and_model_bloc.dart';

@freezed
class BrandAndModelState with _$BrandAndModelState {
  // For data
  const factory BrandAndModelState({
    required List<BrandModel> brandList,
    required bool isLoading,
    required bool isFailure,
  }) = _BrandState;

  // Initial setup
  factory BrandAndModelState.initial() {
    return BrandAndModelState(
      brandList: [],
      isLoading: false,
      isFailure: false,
    );
  }
}
