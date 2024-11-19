// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddDoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function(String imagePath) setImage,
    required TResult Function() imageDispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function(String imagePath)? setImage,
    TResult? Function()? imageDispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function(String imagePath)? setImage,
    TResult Function()? imageDispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(SetImage value) setImage,
    required TResult Function(ImageDispose value) imageDispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(SetImage value)? setImage,
    TResult? Function(ImageDispose value)? imageDispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(SetImage value)? setImage,
    TResult Function(ImageDispose value)? imageDispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDoctorEventCopyWith<$Res> {
  factory $AddDoctorEventCopyWith(
          AddDoctorEvent value, $Res Function(AddDoctorEvent) then) =
      _$AddDoctorEventCopyWithImpl<$Res, AddDoctorEvent>;
}

/// @nodoc
class _$AddDoctorEventCopyWithImpl<$Res, $Val extends AddDoctorEvent>
    implements $AddDoctorEventCopyWith<$Res> {
  _$AddDoctorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddDoctorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PickImageFromGalleryImplCopyWith<$Res> {
  factory _$$PickImageFromGalleryImplCopyWith(_$PickImageFromGalleryImpl value,
          $Res Function(_$PickImageFromGalleryImpl) then) =
      __$$PickImageFromGalleryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageFromGalleryImplCopyWithImpl<$Res>
    extends _$AddDoctorEventCopyWithImpl<$Res, _$PickImageFromGalleryImpl>
    implements _$$PickImageFromGalleryImplCopyWith<$Res> {
  __$$PickImageFromGalleryImplCopyWithImpl(_$PickImageFromGalleryImpl _value,
      $Res Function(_$PickImageFromGalleryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickImageFromGalleryImpl implements PickImageFromGallery {
  const _$PickImageFromGalleryImpl();

  @override
  String toString() {
    return 'AddDoctorEvent.pickImageFromGallery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageFromGalleryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function(String imagePath) setImage,
    required TResult Function() imageDispose,
  }) {
    return pickImageFromGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function(String imagePath)? setImage,
    TResult? Function()? imageDispose,
  }) {
    return pickImageFromGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function(String imagePath)? setImage,
    TResult Function()? imageDispose,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(SetImage value) setImage,
    required TResult Function(ImageDispose value) imageDispose,
  }) {
    return pickImageFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(SetImage value)? setImage,
    TResult? Function(ImageDispose value)? imageDispose,
  }) {
    return pickImageFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(SetImage value)? setImage,
    TResult Function(ImageDispose value)? imageDispose,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery(this);
    }
    return orElse();
  }
}

abstract class PickImageFromGallery implements AddDoctorEvent {
  const factory PickImageFromGallery() = _$PickImageFromGalleryImpl;
}

/// @nodoc
abstract class _$$SetImageImplCopyWith<$Res> {
  factory _$$SetImageImplCopyWith(
          _$SetImageImpl value, $Res Function(_$SetImageImpl) then) =
      __$$SetImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$SetImageImplCopyWithImpl<$Res>
    extends _$AddDoctorEventCopyWithImpl<$Res, _$SetImageImpl>
    implements _$$SetImageImplCopyWith<$Res> {
  __$$SetImageImplCopyWithImpl(
      _$SetImageImpl _value, $Res Function(_$SetImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$SetImageImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetImageImpl implements SetImage {
  const _$SetImageImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'AddDoctorEvent.setImage(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImageImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of AddDoctorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImageImplCopyWith<_$SetImageImpl> get copyWith =>
      __$$SetImageImplCopyWithImpl<_$SetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function(String imagePath) setImage,
    required TResult Function() imageDispose,
  }) {
    return setImage(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function(String imagePath)? setImage,
    TResult? Function()? imageDispose,
  }) {
    return setImage?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function(String imagePath)? setImage,
    TResult Function()? imageDispose,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(SetImage value) setImage,
    required TResult Function(ImageDispose value) imageDispose,
  }) {
    return setImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(SetImage value)? setImage,
    TResult? Function(ImageDispose value)? imageDispose,
  }) {
    return setImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(SetImage value)? setImage,
    TResult Function(ImageDispose value)? imageDispose,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(this);
    }
    return orElse();
  }
}

abstract class SetImage implements AddDoctorEvent {
  const factory SetImage(final String imagePath) = _$SetImageImpl;

  String get imagePath;

  /// Create a copy of AddDoctorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetImageImplCopyWith<_$SetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageDisposeImplCopyWith<$Res> {
  factory _$$ImageDisposeImplCopyWith(
          _$ImageDisposeImpl value, $Res Function(_$ImageDisposeImpl) then) =
      __$$ImageDisposeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageDisposeImplCopyWithImpl<$Res>
    extends _$AddDoctorEventCopyWithImpl<$Res, _$ImageDisposeImpl>
    implements _$$ImageDisposeImplCopyWith<$Res> {
  __$$ImageDisposeImplCopyWithImpl(
      _$ImageDisposeImpl _value, $Res Function(_$ImageDisposeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImageDisposeImpl implements ImageDispose {
  const _$ImageDisposeImpl();

  @override
  String toString() {
    return 'AddDoctorEvent.imageDispose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageDisposeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImageFromGallery,
    required TResult Function(String imagePath) setImage,
    required TResult Function() imageDispose,
  }) {
    return imageDispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImageFromGallery,
    TResult? Function(String imagePath)? setImage,
    TResult? Function()? imageDispose,
  }) {
    return imageDispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImageFromGallery,
    TResult Function(String imagePath)? setImage,
    TResult Function()? imageDispose,
    required TResult orElse(),
  }) {
    if (imageDispose != null) {
      return imageDispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageFromGallery value) pickImageFromGallery,
    required TResult Function(SetImage value) setImage,
    required TResult Function(ImageDispose value) imageDispose,
  }) {
    return imageDispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(SetImage value)? setImage,
    TResult? Function(ImageDispose value)? imageDispose,
  }) {
    return imageDispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageFromGallery value)? pickImageFromGallery,
    TResult Function(SetImage value)? setImage,
    TResult Function(ImageDispose value)? imageDispose,
    required TResult orElse(),
  }) {
    if (imageDispose != null) {
      return imageDispose(this);
    }
    return orElse();
  }
}

abstract class ImageDispose implements AddDoctorEvent {
  const factory ImageDispose() = _$ImageDisposeImpl;
}

/// @nodoc
mixin _$AddDoctorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addinitialState,
    required TResult Function() addLoadingState,
    required TResult Function(String profile) addLoadedState,
    required TResult Function(String errorMsg) addErrorState,
    required TResult Function() addSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addinitialState,
    TResult? Function()? addLoadingState,
    TResult? Function(String profile)? addLoadedState,
    TResult? Function(String errorMsg)? addErrorState,
    TResult? Function()? addSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addinitialState,
    TResult Function()? addLoadingState,
    TResult Function(String profile)? addLoadedState,
    TResult Function(String errorMsg)? addErrorState,
    TResult Function()? addSuccessState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddInitialState value) addinitialState,
    required TResult Function(AddLoadingState value) addLoadingState,
    required TResult Function(AddLoadedState value) addLoadedState,
    required TResult Function(AddErrorState value) addErrorState,
    required TResult Function(AddSuccessState value) addSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddInitialState value)? addinitialState,
    TResult? Function(AddLoadingState value)? addLoadingState,
    TResult? Function(AddLoadedState value)? addLoadedState,
    TResult? Function(AddErrorState value)? addErrorState,
    TResult? Function(AddSuccessState value)? addSuccessState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddInitialState value)? addinitialState,
    TResult Function(AddLoadingState value)? addLoadingState,
    TResult Function(AddLoadedState value)? addLoadedState,
    TResult Function(AddErrorState value)? addErrorState,
    TResult Function(AddSuccessState value)? addSuccessState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDoctorStateCopyWith<$Res> {
  factory $AddDoctorStateCopyWith(
          AddDoctorState value, $Res Function(AddDoctorState) then) =
      _$AddDoctorStateCopyWithImpl<$Res, AddDoctorState>;
}

/// @nodoc
class _$AddDoctorStateCopyWithImpl<$Res, $Val extends AddDoctorState>
    implements $AddDoctorStateCopyWith<$Res> {
  _$AddDoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddInitialStateImplCopyWith<$Res> {
  factory _$$AddInitialStateImplCopyWith(_$AddInitialStateImpl value,
          $Res Function(_$AddInitialStateImpl) then) =
      __$$AddInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddInitialStateImplCopyWithImpl<$Res>
    extends _$AddDoctorStateCopyWithImpl<$Res, _$AddInitialStateImpl>
    implements _$$AddInitialStateImplCopyWith<$Res> {
  __$$AddInitialStateImplCopyWithImpl(
      _$AddInitialStateImpl _value, $Res Function(_$AddInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddInitialStateImpl implements AddInitialState {
  const _$AddInitialStateImpl();

  @override
  String toString() {
    return 'AddDoctorState.addinitialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addinitialState,
    required TResult Function() addLoadingState,
    required TResult Function(String profile) addLoadedState,
    required TResult Function(String errorMsg) addErrorState,
    required TResult Function() addSuccessState,
  }) {
    return addinitialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addinitialState,
    TResult? Function()? addLoadingState,
    TResult? Function(String profile)? addLoadedState,
    TResult? Function(String errorMsg)? addErrorState,
    TResult? Function()? addSuccessState,
  }) {
    return addinitialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addinitialState,
    TResult Function()? addLoadingState,
    TResult Function(String profile)? addLoadedState,
    TResult Function(String errorMsg)? addErrorState,
    TResult Function()? addSuccessState,
    required TResult orElse(),
  }) {
    if (addinitialState != null) {
      return addinitialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddInitialState value) addinitialState,
    required TResult Function(AddLoadingState value) addLoadingState,
    required TResult Function(AddLoadedState value) addLoadedState,
    required TResult Function(AddErrorState value) addErrorState,
    required TResult Function(AddSuccessState value) addSuccessState,
  }) {
    return addinitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddInitialState value)? addinitialState,
    TResult? Function(AddLoadingState value)? addLoadingState,
    TResult? Function(AddLoadedState value)? addLoadedState,
    TResult? Function(AddErrorState value)? addErrorState,
    TResult? Function(AddSuccessState value)? addSuccessState,
  }) {
    return addinitialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddInitialState value)? addinitialState,
    TResult Function(AddLoadingState value)? addLoadingState,
    TResult Function(AddLoadedState value)? addLoadedState,
    TResult Function(AddErrorState value)? addErrorState,
    TResult Function(AddSuccessState value)? addSuccessState,
    required TResult orElse(),
  }) {
    if (addinitialState != null) {
      return addinitialState(this);
    }
    return orElse();
  }
}

abstract class AddInitialState implements AddDoctorState {
  const factory AddInitialState() = _$AddInitialStateImpl;
}

/// @nodoc
abstract class _$$AddLoadingStateImplCopyWith<$Res> {
  factory _$$AddLoadingStateImplCopyWith(_$AddLoadingStateImpl value,
          $Res Function(_$AddLoadingStateImpl) then) =
      __$$AddLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddLoadingStateImplCopyWithImpl<$Res>
    extends _$AddDoctorStateCopyWithImpl<$Res, _$AddLoadingStateImpl>
    implements _$$AddLoadingStateImplCopyWith<$Res> {
  __$$AddLoadingStateImplCopyWithImpl(
      _$AddLoadingStateImpl _value, $Res Function(_$AddLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddLoadingStateImpl implements AddLoadingState {
  const _$AddLoadingStateImpl();

  @override
  String toString() {
    return 'AddDoctorState.addLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addinitialState,
    required TResult Function() addLoadingState,
    required TResult Function(String profile) addLoadedState,
    required TResult Function(String errorMsg) addErrorState,
    required TResult Function() addSuccessState,
  }) {
    return addLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addinitialState,
    TResult? Function()? addLoadingState,
    TResult? Function(String profile)? addLoadedState,
    TResult? Function(String errorMsg)? addErrorState,
    TResult? Function()? addSuccessState,
  }) {
    return addLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addinitialState,
    TResult Function()? addLoadingState,
    TResult Function(String profile)? addLoadedState,
    TResult Function(String errorMsg)? addErrorState,
    TResult Function()? addSuccessState,
    required TResult orElse(),
  }) {
    if (addLoadingState != null) {
      return addLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddInitialState value) addinitialState,
    required TResult Function(AddLoadingState value) addLoadingState,
    required TResult Function(AddLoadedState value) addLoadedState,
    required TResult Function(AddErrorState value) addErrorState,
    required TResult Function(AddSuccessState value) addSuccessState,
  }) {
    return addLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddInitialState value)? addinitialState,
    TResult? Function(AddLoadingState value)? addLoadingState,
    TResult? Function(AddLoadedState value)? addLoadedState,
    TResult? Function(AddErrorState value)? addErrorState,
    TResult? Function(AddSuccessState value)? addSuccessState,
  }) {
    return addLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddInitialState value)? addinitialState,
    TResult Function(AddLoadingState value)? addLoadingState,
    TResult Function(AddLoadedState value)? addLoadedState,
    TResult Function(AddErrorState value)? addErrorState,
    TResult Function(AddSuccessState value)? addSuccessState,
    required TResult orElse(),
  }) {
    if (addLoadingState != null) {
      return addLoadingState(this);
    }
    return orElse();
  }
}

abstract class AddLoadingState implements AddDoctorState {
  const factory AddLoadingState() = _$AddLoadingStateImpl;
}

/// @nodoc
abstract class _$$AddLoadedStateImplCopyWith<$Res> {
  factory _$$AddLoadedStateImplCopyWith(_$AddLoadedStateImpl value,
          $Res Function(_$AddLoadedStateImpl) then) =
      __$$AddLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String profile});
}

/// @nodoc
class __$$AddLoadedStateImplCopyWithImpl<$Res>
    extends _$AddDoctorStateCopyWithImpl<$Res, _$AddLoadedStateImpl>
    implements _$$AddLoadedStateImplCopyWith<$Res> {
  __$$AddLoadedStateImplCopyWithImpl(
      _$AddLoadedStateImpl _value, $Res Function(_$AddLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$AddLoadedStateImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddLoadedStateImpl implements AddLoadedState {
  const _$AddLoadedStateImpl({required this.profile});

  @override
  final String profile;

  @override
  String toString() {
    return 'AddDoctorState.addLoadedState(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLoadedStateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLoadedStateImplCopyWith<_$AddLoadedStateImpl> get copyWith =>
      __$$AddLoadedStateImplCopyWithImpl<_$AddLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addinitialState,
    required TResult Function() addLoadingState,
    required TResult Function(String profile) addLoadedState,
    required TResult Function(String errorMsg) addErrorState,
    required TResult Function() addSuccessState,
  }) {
    return addLoadedState(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addinitialState,
    TResult? Function()? addLoadingState,
    TResult? Function(String profile)? addLoadedState,
    TResult? Function(String errorMsg)? addErrorState,
    TResult? Function()? addSuccessState,
  }) {
    return addLoadedState?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addinitialState,
    TResult Function()? addLoadingState,
    TResult Function(String profile)? addLoadedState,
    TResult Function(String errorMsg)? addErrorState,
    TResult Function()? addSuccessState,
    required TResult orElse(),
  }) {
    if (addLoadedState != null) {
      return addLoadedState(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddInitialState value) addinitialState,
    required TResult Function(AddLoadingState value) addLoadingState,
    required TResult Function(AddLoadedState value) addLoadedState,
    required TResult Function(AddErrorState value) addErrorState,
    required TResult Function(AddSuccessState value) addSuccessState,
  }) {
    return addLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddInitialState value)? addinitialState,
    TResult? Function(AddLoadingState value)? addLoadingState,
    TResult? Function(AddLoadedState value)? addLoadedState,
    TResult? Function(AddErrorState value)? addErrorState,
    TResult? Function(AddSuccessState value)? addSuccessState,
  }) {
    return addLoadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddInitialState value)? addinitialState,
    TResult Function(AddLoadingState value)? addLoadingState,
    TResult Function(AddLoadedState value)? addLoadedState,
    TResult Function(AddErrorState value)? addErrorState,
    TResult Function(AddSuccessState value)? addSuccessState,
    required TResult orElse(),
  }) {
    if (addLoadedState != null) {
      return addLoadedState(this);
    }
    return orElse();
  }
}

abstract class AddLoadedState implements AddDoctorState {
  const factory AddLoadedState({required final String profile}) =
      _$AddLoadedStateImpl;

  String get profile;

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddLoadedStateImplCopyWith<_$AddLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddErrorStateImplCopyWith<$Res> {
  factory _$$AddErrorStateImplCopyWith(
          _$AddErrorStateImpl value, $Res Function(_$AddErrorStateImpl) then) =
      __$$AddErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$AddErrorStateImplCopyWithImpl<$Res>
    extends _$AddDoctorStateCopyWithImpl<$Res, _$AddErrorStateImpl>
    implements _$$AddErrorStateImplCopyWith<$Res> {
  __$$AddErrorStateImplCopyWithImpl(
      _$AddErrorStateImpl _value, $Res Function(_$AddErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$AddErrorStateImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddErrorStateImpl implements AddErrorState {
  const _$AddErrorStateImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'AddDoctorState.addErrorState(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddErrorStateImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddErrorStateImplCopyWith<_$AddErrorStateImpl> get copyWith =>
      __$$AddErrorStateImplCopyWithImpl<_$AddErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addinitialState,
    required TResult Function() addLoadingState,
    required TResult Function(String profile) addLoadedState,
    required TResult Function(String errorMsg) addErrorState,
    required TResult Function() addSuccessState,
  }) {
    return addErrorState(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addinitialState,
    TResult? Function()? addLoadingState,
    TResult? Function(String profile)? addLoadedState,
    TResult? Function(String errorMsg)? addErrorState,
    TResult? Function()? addSuccessState,
  }) {
    return addErrorState?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addinitialState,
    TResult Function()? addLoadingState,
    TResult Function(String profile)? addLoadedState,
    TResult Function(String errorMsg)? addErrorState,
    TResult Function()? addSuccessState,
    required TResult orElse(),
  }) {
    if (addErrorState != null) {
      return addErrorState(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddInitialState value) addinitialState,
    required TResult Function(AddLoadingState value) addLoadingState,
    required TResult Function(AddLoadedState value) addLoadedState,
    required TResult Function(AddErrorState value) addErrorState,
    required TResult Function(AddSuccessState value) addSuccessState,
  }) {
    return addErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddInitialState value)? addinitialState,
    TResult? Function(AddLoadingState value)? addLoadingState,
    TResult? Function(AddLoadedState value)? addLoadedState,
    TResult? Function(AddErrorState value)? addErrorState,
    TResult? Function(AddSuccessState value)? addSuccessState,
  }) {
    return addErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddInitialState value)? addinitialState,
    TResult Function(AddLoadingState value)? addLoadingState,
    TResult Function(AddLoadedState value)? addLoadedState,
    TResult Function(AddErrorState value)? addErrorState,
    TResult Function(AddSuccessState value)? addSuccessState,
    required TResult orElse(),
  }) {
    if (addErrorState != null) {
      return addErrorState(this);
    }
    return orElse();
  }
}

abstract class AddErrorState implements AddDoctorState {
  const factory AddErrorState({required final String errorMsg}) =
      _$AddErrorStateImpl;

  String get errorMsg;

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddErrorStateImplCopyWith<_$AddErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSuccessStateImplCopyWith<$Res> {
  factory _$$AddSuccessStateImplCopyWith(_$AddSuccessStateImpl value,
          $Res Function(_$AddSuccessStateImpl) then) =
      __$$AddSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddSuccessStateImplCopyWithImpl<$Res>
    extends _$AddDoctorStateCopyWithImpl<$Res, _$AddSuccessStateImpl>
    implements _$$AddSuccessStateImplCopyWith<$Res> {
  __$$AddSuccessStateImplCopyWithImpl(
      _$AddSuccessStateImpl _value, $Res Function(_$AddSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDoctorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddSuccessStateImpl implements AddSuccessState {
  const _$AddSuccessStateImpl();

  @override
  String toString() {
    return 'AddDoctorState.addSuccessState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addinitialState,
    required TResult Function() addLoadingState,
    required TResult Function(String profile) addLoadedState,
    required TResult Function(String errorMsg) addErrorState,
    required TResult Function() addSuccessState,
  }) {
    return addSuccessState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addinitialState,
    TResult? Function()? addLoadingState,
    TResult? Function(String profile)? addLoadedState,
    TResult? Function(String errorMsg)? addErrorState,
    TResult? Function()? addSuccessState,
  }) {
    return addSuccessState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addinitialState,
    TResult Function()? addLoadingState,
    TResult Function(String profile)? addLoadedState,
    TResult Function(String errorMsg)? addErrorState,
    TResult Function()? addSuccessState,
    required TResult orElse(),
  }) {
    if (addSuccessState != null) {
      return addSuccessState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddInitialState value) addinitialState,
    required TResult Function(AddLoadingState value) addLoadingState,
    required TResult Function(AddLoadedState value) addLoadedState,
    required TResult Function(AddErrorState value) addErrorState,
    required TResult Function(AddSuccessState value) addSuccessState,
  }) {
    return addSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddInitialState value)? addinitialState,
    TResult? Function(AddLoadingState value)? addLoadingState,
    TResult? Function(AddLoadedState value)? addLoadedState,
    TResult? Function(AddErrorState value)? addErrorState,
    TResult? Function(AddSuccessState value)? addSuccessState,
  }) {
    return addSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddInitialState value)? addinitialState,
    TResult Function(AddLoadingState value)? addLoadingState,
    TResult Function(AddLoadedState value)? addLoadedState,
    TResult Function(AddErrorState value)? addErrorState,
    TResult Function(AddSuccessState value)? addSuccessState,
    required TResult orElse(),
  }) {
    if (addSuccessState != null) {
      return addSuccessState(this);
    }
    return orElse();
  }
}

abstract class AddSuccessState implements AddDoctorState {
  const factory AddSuccessState() = _$AddSuccessStateImpl;
}
