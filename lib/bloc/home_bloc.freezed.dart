// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Color? get color => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  List<CardModel>? get cards => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({Color? color, bool? isLoading, List<CardModel>? cards});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? isLoading = freezed,
    Object? cards = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      cards: freezed == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color? color, bool? isLoading, List<CardModel>? cards});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? isLoading = freezed,
    Object? cards = freezed,
  }) {
    return _then(_$HomeStateImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      cards: freezed == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl with DiagnosticableTreeMixin implements _HomeState {
  const _$HomeStateImpl(
      {this.color = null,
      this.isLoading = false,
      final List<CardModel>? cards = null})
      : _cards = cards;

  @override
  @JsonKey()
  final Color? color;
  @override
  @JsonKey()
  final bool? isLoading;
  final List<CardModel>? _cards;
  @override
  @JsonKey()
  List<CardModel>? get cards {
    final value = _cards;
    if (value == null) return null;
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(color: $color, isLoading: $isLoading, cards: $cards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('cards', cards));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, isLoading,
      const DeepCollectionEquality().hash(_cards));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final Color? color,
      final bool? isLoading,
      final List<CardModel>? cards}) = _$HomeStateImpl;

  @override
  Color? get color;
  @override
  bool? get isLoading;
  @override
  List<CardModel>? get cards;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  String? get cardBackgroundImage => throw _privateConstructorUsedError;
  File? get cardBackgroundImageFromStorage =>
      throw _privateConstructorUsedError;
  Color? get backgroundColor => throw _privateConstructorUsedError;
  double? get blurDegree => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? cardBackgroundImage,
            File? cardBackgroundImageFromStorage,
            Color? backgroundColor,
            double? blurDegree)
        setData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? cardBackgroundImage,
            File? cardBackgroundImageFromStorage,
            Color? backgroundColor,
            double? blurDegree)?
        setData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? cardBackgroundImage,
            File? cardBackgroundImageFromStorage,
            Color? backgroundColor,
            double? blurDegree)?
        setData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call(
      {String? cardBackgroundImage,
      File? cardBackgroundImageFromStorage,
      Color? backgroundColor,
      double? blurDegree});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardBackgroundImage = freezed,
    Object? cardBackgroundImageFromStorage = freezed,
    Object? backgroundColor = freezed,
    Object? blurDegree = freezed,
  }) {
    return _then(_value.copyWith(
      cardBackgroundImage: freezed == cardBackgroundImage
          ? _value.cardBackgroundImage
          : cardBackgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      cardBackgroundImageFromStorage: freezed == cardBackgroundImageFromStorage
          ? _value.cardBackgroundImageFromStorage
          : cardBackgroundImageFromStorage // ignore: cast_nullable_to_non_nullable
              as File?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      blurDegree: freezed == blurDegree
          ? _value.blurDegree
          : blurDegree // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetDataImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$SetDataImplCopyWith(
          _$SetDataImpl value, $Res Function(_$SetDataImpl) then) =
      __$$SetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cardBackgroundImage,
      File? cardBackgroundImageFromStorage,
      Color? backgroundColor,
      double? blurDegree});
}

/// @nodoc
class __$$SetDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetDataImpl>
    implements _$$SetDataImplCopyWith<$Res> {
  __$$SetDataImplCopyWithImpl(
      _$SetDataImpl _value, $Res Function(_$SetDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardBackgroundImage = freezed,
    Object? cardBackgroundImageFromStorage = freezed,
    Object? backgroundColor = freezed,
    Object? blurDegree = freezed,
  }) {
    return _then(_$SetDataImpl(
      cardBackgroundImage: freezed == cardBackgroundImage
          ? _value.cardBackgroundImage
          : cardBackgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      cardBackgroundImageFromStorage: freezed == cardBackgroundImageFromStorage
          ? _value.cardBackgroundImageFromStorage
          : cardBackgroundImageFromStorage // ignore: cast_nullable_to_non_nullable
              as File?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      blurDegree: freezed == blurDegree
          ? _value.blurDegree
          : blurDegree // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$SetDataImpl with DiagnosticableTreeMixin implements _SetData {
  const _$SetDataImpl(
      {required this.cardBackgroundImage,
      required this.cardBackgroundImageFromStorage,
      required this.backgroundColor,
      required this.blurDegree});

  @override
  final String? cardBackgroundImage;
  @override
  final File? cardBackgroundImageFromStorage;
  @override
  final Color? backgroundColor;
  @override
  final double? blurDegree;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.setData(cardBackgroundImage: $cardBackgroundImage, cardBackgroundImageFromStorage: $cardBackgroundImageFromStorage, backgroundColor: $backgroundColor, blurDegree: $blurDegree)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.setData'))
      ..add(DiagnosticsProperty('cardBackgroundImage', cardBackgroundImage))
      ..add(DiagnosticsProperty(
          'cardBackgroundImageFromStorage', cardBackgroundImageFromStorage))
      ..add(DiagnosticsProperty('backgroundColor', backgroundColor))
      ..add(DiagnosticsProperty('blurDegree', blurDegree));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDataImpl &&
            (identical(other.cardBackgroundImage, cardBackgroundImage) ||
                other.cardBackgroundImage == cardBackgroundImage) &&
            (identical(other.cardBackgroundImageFromStorage,
                    cardBackgroundImageFromStorage) ||
                other.cardBackgroundImageFromStorage ==
                    cardBackgroundImageFromStorage) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.blurDegree, blurDegree) ||
                other.blurDegree == blurDegree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardBackgroundImage,
      cardBackgroundImageFromStorage, backgroundColor, blurDegree);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDataImplCopyWith<_$SetDataImpl> get copyWith =>
      __$$SetDataImplCopyWithImpl<_$SetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? cardBackgroundImage,
            File? cardBackgroundImageFromStorage,
            Color? backgroundColor,
            double? blurDegree)
        setData,
  }) {
    return setData(cardBackgroundImage, cardBackgroundImageFromStorage,
        backgroundColor, blurDegree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? cardBackgroundImage,
            File? cardBackgroundImageFromStorage,
            Color? backgroundColor,
            double? blurDegree)?
        setData,
  }) {
    return setData?.call(cardBackgroundImage, cardBackgroundImageFromStorage,
        backgroundColor, blurDegree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? cardBackgroundImage,
            File? cardBackgroundImageFromStorage,
            Color? backgroundColor,
            double? blurDegree)?
        setData,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(cardBackgroundImage, cardBackgroundImageFromStorage,
          backgroundColor, blurDegree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
  }) {
    return setData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
  }) {
    return setData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(this);
    }
    return orElse();
  }
}

abstract class _SetData implements HomeEvent {
  const factory _SetData(
      {required final String? cardBackgroundImage,
      required final File? cardBackgroundImageFromStorage,
      required final Color? backgroundColor,
      required final double? blurDegree}) = _$SetDataImpl;

  @override
  String? get cardBackgroundImage;
  @override
  File? get cardBackgroundImageFromStorage;
  @override
  Color? get backgroundColor;
  @override
  double? get blurDegree;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDataImplCopyWith<_$SetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
