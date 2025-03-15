part of 'brand_and_model_bloc.dart';

@freezed
class BrandAndModelEvent with _$BrandAndModelEvent {
  const factory BrandAndModelEvent.getBrand() = GetBrand;
  const factory BrandAndModelEvent.getModel() = GetModel;
}
