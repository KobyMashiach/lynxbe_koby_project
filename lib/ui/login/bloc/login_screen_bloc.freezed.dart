// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function() registerScreenTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function()? registerScreenTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function()? registerScreenTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(RegisterScreenTap value) registerScreenTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(RegisterScreenTap value)? registerScreenTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(RegisterScreenTap value)? registerScreenTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenEventCopyWith<$Res> {
  factory $LoginScreenEventCopyWith(
          LoginScreenEvent value, $Res Function(LoginScreenEvent) then) =
      _$LoginScreenEventCopyWithImpl<$Res, LoginScreenEvent>;
}

/// @nodoc
class _$LoginScreenEventCopyWithImpl<$Res, $Val extends LoginScreenEvent>
    implements $LoginScreenEventCopyWith<$Res> {
  _$LoginScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginScreenEvent
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
    extends _$LoginScreenEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.initialize()';
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
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function() registerScreenTap,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function()? registerScreenTap,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function()? registerScreenTap,
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
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(RegisterScreenTap value) registerScreenTap,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(RegisterScreenTap value)? registerScreenTap,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(RegisterScreenTap value)? registerScreenTap,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements LoginScreenEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$SignInByGoogleImplCopyWith<$Res> {
  factory _$$SignInByGoogleImplCopyWith(_$SignInByGoogleImpl value,
          $Res Function(_$SignInByGoogleImpl) then) =
      __$$SignInByGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInByGoogleImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$SignInByGoogleImpl>
    implements _$$SignInByGoogleImplCopyWith<$Res> {
  __$$SignInByGoogleImplCopyWithImpl(
      _$SignInByGoogleImpl _value, $Res Function(_$SignInByGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInByGoogleImpl implements SignInByGoogle {
  const _$SignInByGoogleImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.signInByGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInByGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function() registerScreenTap,
  }) {
    return signInByGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function()? registerScreenTap,
  }) {
    return signInByGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function()? registerScreenTap,
    required TResult orElse(),
  }) {
    if (signInByGoogle != null) {
      return signInByGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(RegisterScreenTap value) registerScreenTap,
  }) {
    return signInByGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(RegisterScreenTap value)? registerScreenTap,
  }) {
    return signInByGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(RegisterScreenTap value)? registerScreenTap,
    required TResult orElse(),
  }) {
    if (signInByGoogle != null) {
      return signInByGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInByGoogle implements LoginScreenEvent {
  const factory SignInByGoogle() = _$SignInByGoogleImpl;
}

/// @nodoc
abstract class _$$SignInByEmailPasswordImplCopyWith<$Res> {
  factory _$$SignInByEmailPasswordImplCopyWith(
          _$SignInByEmailPasswordImpl value,
          $Res Function(_$SignInByEmailPasswordImpl) then) =
      __$$SignInByEmailPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInByEmailPasswordImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$SignInByEmailPasswordImpl>
    implements _$$SignInByEmailPasswordImplCopyWith<$Res> {
  __$$SignInByEmailPasswordImplCopyWithImpl(_$SignInByEmailPasswordImpl _value,
      $Res Function(_$SignInByEmailPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInByEmailPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInByEmailPasswordImpl implements SignInByEmailPassword {
  const _$SignInByEmailPasswordImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginScreenEvent.signInByEmailPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInByEmailPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInByEmailPasswordImplCopyWith<_$SignInByEmailPasswordImpl>
      get copyWith => __$$SignInByEmailPasswordImplCopyWithImpl<
          _$SignInByEmailPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function() registerScreenTap,
  }) {
    return signInByEmailPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function()? registerScreenTap,
  }) {
    return signInByEmailPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function()? registerScreenTap,
    required TResult orElse(),
  }) {
    if (signInByEmailPassword != null) {
      return signInByEmailPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(RegisterScreenTap value) registerScreenTap,
  }) {
    return signInByEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(RegisterScreenTap value)? registerScreenTap,
  }) {
    return signInByEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(RegisterScreenTap value)? registerScreenTap,
    required TResult orElse(),
  }) {
    if (signInByEmailPassword != null) {
      return signInByEmailPassword(this);
    }
    return orElse();
  }
}

abstract class SignInByEmailPassword implements LoginScreenEvent {
  const factory SignInByEmailPassword(
      {required final String email,
      required final String password}) = _$SignInByEmailPasswordImpl;

  String get email;
  String get password;

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInByEmailPasswordImplCopyWith<_$SignInByEmailPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterScreenTapImplCopyWith<$Res> {
  factory _$$RegisterScreenTapImplCopyWith(_$RegisterScreenTapImpl value,
          $Res Function(_$RegisterScreenTapImpl) then) =
      __$$RegisterScreenTapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterScreenTapImplCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$RegisterScreenTapImpl>
    implements _$$RegisterScreenTapImplCopyWith<$Res> {
  __$$RegisterScreenTapImplCopyWithImpl(_$RegisterScreenTapImpl _value,
      $Res Function(_$RegisterScreenTapImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterScreenTapImpl implements RegisterScreenTap {
  const _$RegisterScreenTapImpl();

  @override
  String toString() {
    return 'LoginScreenEvent.registerScreenTap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterScreenTapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() signInByGoogle,
    required TResult Function(String email, String password)
        signInByEmailPassword,
    required TResult Function() registerScreenTap,
  }) {
    return registerScreenTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? signInByGoogle,
    TResult? Function(String email, String password)? signInByEmailPassword,
    TResult? Function()? registerScreenTap,
  }) {
    return registerScreenTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? signInByGoogle,
    TResult Function(String email, String password)? signInByEmailPassword,
    TResult Function()? registerScreenTap,
    required TResult orElse(),
  }) {
    if (registerScreenTap != null) {
      return registerScreenTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SignInByGoogle value) signInByGoogle,
    required TResult Function(SignInByEmailPassword value)
        signInByEmailPassword,
    required TResult Function(RegisterScreenTap value) registerScreenTap,
  }) {
    return registerScreenTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SignInByGoogle value)? signInByGoogle,
    TResult? Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult? Function(RegisterScreenTap value)? registerScreenTap,
  }) {
    return registerScreenTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SignInByGoogle value)? signInByGoogle,
    TResult Function(SignInByEmailPassword value)? signInByEmailPassword,
    TResult Function(RegisterScreenTap value)? registerScreenTap,
    required TResult orElse(),
  }) {
    if (registerScreenTap != null) {
      return registerScreenTap(this);
    }
    return orElse();
  }
}

abstract class RegisterScreenTap implements LoginScreenEvent {
  const factory RegisterScreenTap() = _$RegisterScreenTapImpl;
}

/// @nodoc
mixin _$LoginScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function(String msg) message,
    required TResult Function() navigateHome,
    required TResult Function() navigateRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function(String msg)? message,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function(String msg)? message,
    TResult Function()? navigateHome,
    TResult Function()? navigateRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenMessage value) message,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateRegister value)
        navigateRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenMessage value)? message,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateRegister value)? navigateRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenMessage value)? message,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateRegister value)? navigateRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginScreenInitialImplCopyWith<$Res> {
  factory _$$LoginScreenInitialImplCopyWith(_$LoginScreenInitialImpl value,
          $Res Function(_$LoginScreenInitialImpl) then) =
      __$$LoginScreenInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenInitialImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenInitialImpl>
    implements _$$LoginScreenInitialImplCopyWith<$Res> {
  __$$LoginScreenInitialImplCopyWithImpl(_$LoginScreenInitialImpl _value,
      $Res Function(_$LoginScreenInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenInitialImpl implements _LoginScreenInitial {
  const _$LoginScreenInitialImpl();

  @override
  String toString() {
    return 'LoginScreenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function(String msg) message,
    required TResult Function() navigateHome,
    required TResult Function() navigateRegister,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function(String msg)? message,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateRegister,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function(String msg)? message,
    TResult Function()? navigateHome,
    TResult Function()? navigateRegister,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenMessage value) message,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateRegister value)
        navigateRegister,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenMessage value)? message,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateRegister value)? navigateRegister,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenMessage value)? message,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateRegister value)? navigateRegister,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenInitial implements LoginScreenState {
  const factory _LoginScreenInitial() = _$LoginScreenInitialImpl;
}

/// @nodoc
abstract class _$$LoginScreenLoadingImplCopyWith<$Res> {
  factory _$$LoginScreenLoadingImplCopyWith(_$LoginScreenLoadingImpl value,
          $Res Function(_$LoginScreenLoadingImpl) then) =
      __$$LoginScreenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenLoadingImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenLoadingImpl>
    implements _$$LoginScreenLoadingImplCopyWith<$Res> {
  __$$LoginScreenLoadingImplCopyWithImpl(_$LoginScreenLoadingImpl _value,
      $Res Function(_$LoginScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenLoadingImpl implements _LoginScreenLoading {
  const _$LoginScreenLoadingImpl();

  @override
  String toString() {
    return 'LoginScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function(String msg) message,
    required TResult Function() navigateHome,
    required TResult Function() navigateRegister,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function(String msg)? message,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateRegister,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function(String msg)? message,
    TResult Function()? navigateHome,
    TResult Function()? navigateRegister,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenMessage value) message,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateRegister value)
        navigateRegister,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenMessage value)? message,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateRegister value)? navigateRegister,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenMessage value)? message,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateRegister value)? navigateRegister,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenLoading implements LoginScreenState {
  const factory _LoginScreenLoading() = _$LoginScreenLoadingImpl;
}

/// @nodoc
abstract class _$$LoginScreenRefreshUIImplCopyWith<$Res> {
  factory _$$LoginScreenRefreshUIImplCopyWith(_$LoginScreenRefreshUIImpl value,
          $Res Function(_$LoginScreenRefreshUIImpl) then) =
      __$$LoginScreenRefreshUIImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenRefreshUIImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenRefreshUIImpl>
    implements _$$LoginScreenRefreshUIImplCopyWith<$Res> {
  __$$LoginScreenRefreshUIImplCopyWithImpl(_$LoginScreenRefreshUIImpl _value,
      $Res Function(_$LoginScreenRefreshUIImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenRefreshUIImpl implements _LoginScreenRefreshUI {
  const _$LoginScreenRefreshUIImpl();

  @override
  String toString() {
    return 'LoginScreenState.refreshUI()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenRefreshUIImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function(String msg) message,
    required TResult Function() navigateHome,
    required TResult Function() navigateRegister,
  }) {
    return refreshUI();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function(String msg)? message,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateRegister,
  }) {
    return refreshUI?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function(String msg)? message,
    TResult Function()? navigateHome,
    TResult Function()? navigateRegister,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenMessage value) message,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateRegister value)
        navigateRegister,
  }) {
    return refreshUI(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenMessage value)? message,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateRegister value)? navigateRegister,
  }) {
    return refreshUI?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenMessage value)? message,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateRegister value)? navigateRegister,
    required TResult orElse(),
  }) {
    if (refreshUI != null) {
      return refreshUI(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenRefreshUI implements LoginScreenState {
  const factory _LoginScreenRefreshUI() = _$LoginScreenRefreshUIImpl;
}

/// @nodoc
abstract class _$$LoginScreenMessageImplCopyWith<$Res> {
  factory _$$LoginScreenMessageImplCopyWith(_$LoginScreenMessageImpl value,
          $Res Function(_$LoginScreenMessageImpl) then) =
      __$$LoginScreenMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$LoginScreenMessageImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenMessageImpl>
    implements _$$LoginScreenMessageImplCopyWith<$Res> {
  __$$LoginScreenMessageImplCopyWithImpl(_$LoginScreenMessageImpl _value,
      $Res Function(_$LoginScreenMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$LoginScreenMessageImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginScreenMessageImpl implements _LoginScreenMessage {
  const _$LoginScreenMessageImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'LoginScreenState.message(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenMessageImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginScreenMessageImplCopyWith<_$LoginScreenMessageImpl> get copyWith =>
      __$$LoginScreenMessageImplCopyWithImpl<_$LoginScreenMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function(String msg) message,
    required TResult Function() navigateHome,
    required TResult Function() navigateRegister,
  }) {
    return message(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function(String msg)? message,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateRegister,
  }) {
    return message?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function(String msg)? message,
    TResult Function()? navigateHome,
    TResult Function()? navigateRegister,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenMessage value) message,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateRegister value)
        navigateRegister,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenMessage value)? message,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateRegister value)? navigateRegister,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenMessage value)? message,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateRegister value)? navigateRegister,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenMessage implements LoginScreenState {
  const factory _LoginScreenMessage(final String msg) =
      _$LoginScreenMessageImpl;

  String get msg;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginScreenMessageImplCopyWith<_$LoginScreenMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginScreenNavigateHomeImplCopyWith<$Res> {
  factory _$$LoginScreenNavigateHomeImplCopyWith(
          _$LoginScreenNavigateHomeImpl value,
          $Res Function(_$LoginScreenNavigateHomeImpl) then) =
      __$$LoginScreenNavigateHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenNavigateHomeImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenNavigateHomeImpl>
    implements _$$LoginScreenNavigateHomeImplCopyWith<$Res> {
  __$$LoginScreenNavigateHomeImplCopyWithImpl(
      _$LoginScreenNavigateHomeImpl _value,
      $Res Function(_$LoginScreenNavigateHomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenNavigateHomeImpl implements _LoginScreenNavigateHome {
  const _$LoginScreenNavigateHomeImpl();

  @override
  String toString() {
    return 'LoginScreenState.navigateHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenNavigateHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function(String msg) message,
    required TResult Function() navigateHome,
    required TResult Function() navigateRegister,
  }) {
    return navigateHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function(String msg)? message,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateRegister,
  }) {
    return navigateHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function(String msg)? message,
    TResult Function()? navigateHome,
    TResult Function()? navigateRegister,
    required TResult orElse(),
  }) {
    if (navigateHome != null) {
      return navigateHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenMessage value) message,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateRegister value)
        navigateRegister,
  }) {
    return navigateHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenMessage value)? message,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateRegister value)? navigateRegister,
  }) {
    return navigateHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenMessage value)? message,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateRegister value)? navigateRegister,
    required TResult orElse(),
  }) {
    if (navigateHome != null) {
      return navigateHome(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenNavigateHome implements LoginScreenState {
  const factory _LoginScreenNavigateHome() = _$LoginScreenNavigateHomeImpl;
}

/// @nodoc
abstract class _$$LoginScreenNavigateRegisterImplCopyWith<$Res> {
  factory _$$LoginScreenNavigateRegisterImplCopyWith(
          _$LoginScreenNavigateRegisterImpl value,
          $Res Function(_$LoginScreenNavigateRegisterImpl) then) =
      __$$LoginScreenNavigateRegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenNavigateRegisterImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res,
        _$LoginScreenNavigateRegisterImpl>
    implements _$$LoginScreenNavigateRegisterImplCopyWith<$Res> {
  __$$LoginScreenNavigateRegisterImplCopyWithImpl(
      _$LoginScreenNavigateRegisterImpl _value,
      $Res Function(_$LoginScreenNavigateRegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginScreenNavigateRegisterImpl
    implements _LoginScreenNavigateRegister {
  const _$LoginScreenNavigateRegisterImpl();

  @override
  String toString() {
    return 'LoginScreenState.navigateRegister()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenNavigateRegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() refreshUI,
    required TResult Function(String msg) message,
    required TResult Function() navigateHome,
    required TResult Function() navigateRegister,
  }) {
    return navigateRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? refreshUI,
    TResult? Function(String msg)? message,
    TResult? Function()? navigateHome,
    TResult? Function()? navigateRegister,
  }) {
    return navigateRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? refreshUI,
    TResult Function(String msg)? message,
    TResult Function()? navigateHome,
    TResult Function()? navigateRegister,
    required TResult orElse(),
  }) {
    if (navigateRegister != null) {
      return navigateRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginScreenInitial value) initial,
    required TResult Function(_LoginScreenLoading value) loading,
    required TResult Function(_LoginScreenRefreshUI value) refreshUI,
    required TResult Function(_LoginScreenMessage value) message,
    required TResult Function(_LoginScreenNavigateHome value) navigateHome,
    required TResult Function(_LoginScreenNavigateRegister value)
        navigateRegister,
  }) {
    return navigateRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginScreenInitial value)? initial,
    TResult? Function(_LoginScreenLoading value)? loading,
    TResult? Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult? Function(_LoginScreenMessage value)? message,
    TResult? Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult? Function(_LoginScreenNavigateRegister value)? navigateRegister,
  }) {
    return navigateRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginScreenInitial value)? initial,
    TResult Function(_LoginScreenLoading value)? loading,
    TResult Function(_LoginScreenRefreshUI value)? refreshUI,
    TResult Function(_LoginScreenMessage value)? message,
    TResult Function(_LoginScreenNavigateHome value)? navigateHome,
    TResult Function(_LoginScreenNavigateRegister value)? navigateRegister,
    required TResult orElse(),
  }) {
    if (navigateRegister != null) {
      return navigateRegister(this);
    }
    return orElse();
  }
}

abstract class _LoginScreenNavigateRegister implements LoginScreenState {
  const factory _LoginScreenNavigateRegister() =
      _$LoginScreenNavigateRegisterImpl;
}
