part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(null) Color? color,
    @Default(false) bool? isLoading,
    @Default(null) List<CardModel>? cards,
  }) = _HomeState;
}