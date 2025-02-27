// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'HomeScreenEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() logout,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? logout,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Logout value) logout,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(Logout value)? logout,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements HomeScreenEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'HomeScreenEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements HomeScreenEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$HomeScreenState {
  UserModel? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? user) initial,
    required TResult Function(UserModel? user) loading,
    required TResult Function(UserModel? user) refreshUI,
    required TResult Function(UserModel? user) navLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? user)? initial,
    TResult? Function(UserModel? user)? loading,
    TResult? Function(UserModel? user)? refreshUI,
    TResult? Function(UserModel? user)? navLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? user)? initial,
    TResult Function(UserModel? user)? loading,
    TResult Function(UserModel? user)? refreshUI,
    TResult Function(UserModel? user)? navLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeScreenInitial value) initial,
    required TResult Function(_HomeScreenLoading value) loading,
    required TResult Function(_HomeScreenRefreshUI value) refreshUI,
    required TResult Function(_HomeScreenNavLogin value) navLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeScreenInitial value)? initial,
    TResult? Function(_HomeScreenLoading value)? loading,
    TResult? Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(_HomeScreenNavLogin value)? navLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeScreenInitial value)? initial,
    TResult Function(_HomeScreenLoading value)? loading,
    TResult Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult Function(_HomeScreenNavLogin value)? navLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeScreenInitialImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenInitialImplCopyWith(_$HomeScreenInitialImpl value,
          $Res Function(_$HomeScreenInitialImpl) then) =
      __$$HomeScreenInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeScreenInitialImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenInitialImpl>
    implements _$$HomeScreenInitialImplCopyWith<$Res> {
  __$$HomeScreenInitialImplCopyWithImpl(_$HomeScreenInitialImpl _value,
      $Res Function(_$HomeScreenInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$HomeScreenInitialImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$HomeScreenInitialImpl implements _HomeScreenInitial {
  const _$HomeScreenInitialImpl(this.user);

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'HomeScreenState.initial(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenInitialImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenInitialImplCopyWith<_$HomeScreenInitialImpl> get copyWith =>
      __$$HomeScreenInitialImplCopyWithImpl<_$HomeScreenInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? user) initial,
    required TResult Function(UserModel? user) loading,
    required TResult Function(UserModel? user) refreshUI,
    required TResult Function(UserModel? user) navLogin,
  }) {
    return initial(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? user)? initial,
    TResult? Function(UserModel? user)? loading,
    TResult? Function(UserModel? user)? refreshUI,
    TResult? Function(UserModel? user)? navLogin,
  }) {
    return initial?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? user)? initial,
    TResult Function(UserModel? user)? loading,
    TResult Function(UserModel? user)? refreshUI,
    TResult Function(UserModel? user)? navLogin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeScreenInitial value) initial,
    required TResult Function(_HomeScreenLoading value) loading,
    required TResult Function(_HomeScreenRefreshUI value) refreshUI,
    required TResult Function(_HomeScreenNavLogin value) navLogin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeScreenInitial value)? initial,
    TResult? Function(_HomeScreenLoading value)? loading,
    TResult? Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(_HomeScreenNavLogin value)? navLogin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeScreenInitial value)? initial,
    TResult Function(_HomeScreenLoading value)? loading,
    TResult Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult Function(_HomeScreenNavLogin value)? navLogin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeScreenInitial implements HomeScreenState {
  const factory _HomeScreenInitial(final UserModel? user) =
      _$HomeScreenInitialImpl;

  @override
  UserModel? get user;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenInitialImplCopyWith<_$HomeScreenInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenLoadingImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenLoadingImplCopyWith(_$HomeScreenLoadingImpl value,
          $Res Function(_$HomeScreenLoadingImpl) then) =
      __$$HomeScreenLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeScreenLoadingImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenLoadingImpl>
    implements _$$HomeScreenLoadingImplCopyWith<$Res> {
  __$$HomeScreenLoadingImplCopyWithImpl(_$HomeScreenLoadingImpl _value,
      $Res Function(_$HomeScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$HomeScreenLoadingImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$HomeScreenLoadingImpl implements _HomeScreenLoading {
  const _$HomeScreenLoadingImpl(this.user);

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'HomeScreenState.loading(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenLoadingImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenLoadingImplCopyWith<_$HomeScreenLoadingImpl> get copyWith =>
      __$$HomeScreenLoadingImplCopyWithImpl<_$HomeScreenLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? user) initial,
    required TResult Function(UserModel? user) loading,
    required TResult Function(UserModel? user) refreshUI,
    required TResult Function(UserModel? user) navLogin,
  }) {
    return loading(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? user)? initial,
    TResult? Function(UserModel? user)? loading,
    TResult? Function(UserModel? user)? refreshUI,
    TResult? Function(UserModel? user)? navLogin,
  }) {
    return loading?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? user)? initial,
    TResult Function(UserModel? user)? loading,
    TResult Function(UserModel? user)? refreshUI,
    TResult Function(UserModel? user)? navLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeScreenInitial value) initial,
    required TResult Function(_HomeScreenLoading value) loading,
    required TResult Function(_HomeScreenRefreshUI value) refreshUI,
    required TResult Function(_HomeScreenNavLogin value) navLogin,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeScreenInitial value)? initial,
    TResult? Function(_HomeScreenLoading value)? loading,
    TResult? Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(_HomeScreenNavLogin value)? navLogin,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeScreenInitial value)? initial,
    TResult Function(_HomeScreenLoading value)? loading,
    TResult Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult Function(_HomeScreenNavLogin value)? navLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeScreenLoading implements HomeScreenState {
  const factory _HomeScreenLoading(final UserModel? user) =
      _$HomeScreenLoadingImpl;

  @override
  UserModel? get user;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenLoadingImplCopyWith<_$HomeScreenLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenRefreshUIImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenRefreshUIImplCopyWith(_$HomeScreenRefreshUIImpl value,
          $Res Function(_$HomeScreenRefreshUIImpl) then) =
      __$$HomeScreenRefreshUIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeScreenRefreshUIImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenRefreshUIImpl>
    implements _$$HomeScreenRefreshUIImplCopyWith<$Res> {
  __$$HomeScreenRefreshUIImplCopyWithImpl(_$HomeScreenRefreshUIImpl _value,
      $Res Function(_$HomeScreenRefreshUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$HomeScreenRefreshUIImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$HomeScreenRefreshUIImpl implements _HomeScreenRefreshUI {
  const _$HomeScreenRefreshUIImpl(this.user);

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'HomeScreenState.refreshUI(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenRefreshUIImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenRefreshUIImplCopyWith<_$HomeScreenRefreshUIImpl> get copyWith =>
      __$$HomeScreenRefreshUIImplCopyWithImpl<_$HomeScreenRefreshUIImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? user) initial,
    required TResult Function(UserModel? user) loading,
    required TResult Function(UserModel? user) refreshUI,
    required TResult Function(UserModel? user) navLogin,
  }) {
    return refreshUI(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? user)? initial,
    TResult? Function(UserModel? user)? loading,
    TResult? Function(UserModel? user)? refreshUI,
    TResult? Function(UserModel? user)? navLogin,
  }) {
    return refreshUI?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? user)? initial,
    TResult Function(UserModel? user)? loading,
    TResult Function(UserModel? user)? refreshUI,
    TResult Function(UserModel? user)? navLogin,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeScreenInitial value) initial,
    required TResult Function(_HomeScreenLoading value) loading,
    required TResult Function(_HomeScreenRefreshUI value) refreshUI,
    required TResult Function(_HomeScreenNavLogin value) navLogin,
  }) {
    return refreshUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeScreenInitial value)? initial,
    TResult? Function(_HomeScreenLoading value)? loading,
    TResult? Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(_HomeScreenNavLogin value)? navLogin,
  }) {
    return refreshUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeScreenInitial value)? initial,
    TResult Function(_HomeScreenLoading value)? loading,
    TResult Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult Function(_HomeScreenNavLogin value)? navLogin,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI(this);
    }
    return orElse();
  }
}

abstract class _HomeScreenRefreshUI implements HomeScreenState {
  const factory _HomeScreenRefreshUI(final UserModel? user) =
      _$HomeScreenRefreshUIImpl;

  @override
  UserModel? get user;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenRefreshUIImplCopyWith<_$HomeScreenRefreshUIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenNavLoginImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenNavLoginImplCopyWith(_$HomeScreenNavLoginImpl value,
          $Res Function(_$HomeScreenNavLoginImpl) then) =
      __$$HomeScreenNavLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeScreenNavLoginImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenNavLoginImpl>
    implements _$$HomeScreenNavLoginImplCopyWith<$Res> {
  __$$HomeScreenNavLoginImplCopyWithImpl(_$HomeScreenNavLoginImpl _value,
      $Res Function(_$HomeScreenNavLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$HomeScreenNavLoginImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$HomeScreenNavLoginImpl implements _HomeScreenNavLogin {
  const _$HomeScreenNavLoginImpl(this.user);

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'HomeScreenState.navLogin(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenNavLoginImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenNavLoginImplCopyWith<_$HomeScreenNavLoginImpl> get copyWith =>
      __$$HomeScreenNavLoginImplCopyWithImpl<_$HomeScreenNavLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? user) initial,
    required TResult Function(UserModel? user) loading,
    required TResult Function(UserModel? user) refreshUI,
    required TResult Function(UserModel? user) navLogin,
  }) {
    return navLogin(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? user)? initial,
    TResult? Function(UserModel? user)? loading,
    TResult? Function(UserModel? user)? refreshUI,
    TResult? Function(UserModel? user)? navLogin,
  }) {
    return navLogin?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? user)? initial,
    TResult Function(UserModel? user)? loading,
    TResult Function(UserModel? user)? refreshUI,
    TResult Function(UserModel? user)? navLogin,
    required TResult orElse(),
  }) {
    if (navLogin != null) {
      return navLogin(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeScreenInitial value) initial,
    required TResult Function(_HomeScreenLoading value) loading,
    required TResult Function(_HomeScreenRefreshUI value) refreshUI,
    required TResult Function(_HomeScreenNavLogin value) navLogin,
  }) {
    return navLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeScreenInitial value)? initial,
    TResult? Function(_HomeScreenLoading value)? loading,
    TResult? Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult? Function(_HomeScreenNavLogin value)? navLogin,
  }) {
    return navLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeScreenInitial value)? initial,
    TResult Function(_HomeScreenLoading value)? loading,
    TResult Function(_HomeScreenRefreshUI value)? refreshUI,
    TResult Function(_HomeScreenNavLogin value)? navLogin,
    required TResult orElse(),
  }) {
    if (navLogin != null) {
      return navLogin(this);
    }
    return orElse();
  }
}

abstract class _HomeScreenNavLogin implements HomeScreenState {
  const factory _HomeScreenNavLogin(final UserModel? user) =
      _$HomeScreenNavLoginImpl;

  @override
  UserModel? get user;

  /// Create a copy of HomeScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenNavLoginImplCopyWith<_$HomeScreenNavLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
