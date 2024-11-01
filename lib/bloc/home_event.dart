part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.setData({
    required String? cardBackgroundImage,
    required File? cardBackgroundImageFromStorage,
    required Color? backgroundColor,
    required double? blurDegree,
  }) = _SetData;
}
