// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainAppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() initial,
    required TResult Function(String? signInError) unauthenticated,
    required TResult Function() authenticatedFirstLogin,
    required TResult Function() loading,
    required TResult Function() networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? initial,
    TResult? Function(String? signInError)? unauthenticated,
    TResult? Function()? authenticatedFirstLogin,
    TResult? Function()? loading,
    TResult? Function()? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? initial,
    TResult Function(String? signInError)? unauthenticated,
    TResult Function()? authenticatedFirstLogin,
    TResult Function()? loading,
    TResult Function()? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainAppStateAuthenticated value) authenticated,
    required TResult Function(_MainAppStateInitial value) initial,
    required TResult Function(_MainAppStateUnauthenticated value)
        unauthenticated,
    required TResult Function(_MainAppStateAuthenticatedFirstLogin value)
        authenticatedFirstLogin,
    required TResult Function(_MainAppStateLoading value) loading,
    required TResult Function(_MainAppStateNetworkError value) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainAppStateAuthenticated value)? authenticated,
    TResult? Function(_MainAppStateInitial value)? initial,
    TResult? Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult? Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult? Function(_MainAppStateLoading value)? loading,
    TResult? Function(_MainAppStateNetworkError value)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainAppStateAuthenticated value)? authenticated,
    TResult Function(_MainAppStateInitial value)? initial,
    TResult Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult Function(_MainAppStateLoading value)? loading,
    TResult Function(_MainAppStateNetworkError value)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainAppStateCopyWith<$Res> {
  factory $MainAppStateCopyWith(
          MainAppState value, $Res Function(MainAppState) then) =
      _$MainAppStateCopyWithImpl<$Res, MainAppState>;
}

/// @nodoc
class _$MainAppStateCopyWithImpl<$Res, $Val extends MainAppState>
    implements $MainAppStateCopyWith<$Res> {
  _$MainAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MainAppStateAuthenticatedCopyWith<$Res> {
  factory _$$_MainAppStateAuthenticatedCopyWith(
          _$_MainAppStateAuthenticated value,
          $Res Function(_$_MainAppStateAuthenticated) then) =
      __$$_MainAppStateAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainAppStateAuthenticatedCopyWithImpl<$Res>
    extends _$MainAppStateCopyWithImpl<$Res, _$_MainAppStateAuthenticated>
    implements _$$_MainAppStateAuthenticatedCopyWith<$Res> {
  __$$_MainAppStateAuthenticatedCopyWithImpl(
      _$_MainAppStateAuthenticated _value,
      $Res Function(_$_MainAppStateAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainAppStateAuthenticated implements _MainAppStateAuthenticated {
  const _$_MainAppStateAuthenticated();

  @override
  String toString() {
    return 'MainAppState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainAppStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() initial,
    required TResult Function(String? signInError) unauthenticated,
    required TResult Function() authenticatedFirstLogin,
    required TResult Function() loading,
    required TResult Function() networkError,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? initial,
    TResult? Function(String? signInError)? unauthenticated,
    TResult? Function()? authenticatedFirstLogin,
    TResult? Function()? loading,
    TResult? Function()? networkError,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? initial,
    TResult Function(String? signInError)? unauthenticated,
    TResult Function()? authenticatedFirstLogin,
    TResult Function()? loading,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainAppStateAuthenticated value) authenticated,
    required TResult Function(_MainAppStateInitial value) initial,
    required TResult Function(_MainAppStateUnauthenticated value)
        unauthenticated,
    required TResult Function(_MainAppStateAuthenticatedFirstLogin value)
        authenticatedFirstLogin,
    required TResult Function(_MainAppStateLoading value) loading,
    required TResult Function(_MainAppStateNetworkError value) networkError,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainAppStateAuthenticated value)? authenticated,
    TResult? Function(_MainAppStateInitial value)? initial,
    TResult? Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult? Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult? Function(_MainAppStateLoading value)? loading,
    TResult? Function(_MainAppStateNetworkError value)? networkError,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainAppStateAuthenticated value)? authenticated,
    TResult Function(_MainAppStateInitial value)? initial,
    TResult Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult Function(_MainAppStateLoading value)? loading,
    TResult Function(_MainAppStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _MainAppStateAuthenticated implements MainAppState {
  const factory _MainAppStateAuthenticated() = _$_MainAppStateAuthenticated;
}

/// @nodoc
abstract class _$$_MainAppStateInitialCopyWith<$Res> {
  factory _$$_MainAppStateInitialCopyWith(_$_MainAppStateInitial value,
          $Res Function(_$_MainAppStateInitial) then) =
      __$$_MainAppStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainAppStateInitialCopyWithImpl<$Res>
    extends _$MainAppStateCopyWithImpl<$Res, _$_MainAppStateInitial>
    implements _$$_MainAppStateInitialCopyWith<$Res> {
  __$$_MainAppStateInitialCopyWithImpl(_$_MainAppStateInitial _value,
      $Res Function(_$_MainAppStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainAppStateInitial implements _MainAppStateInitial {
  const _$_MainAppStateInitial();

  @override
  String toString() {
    return 'MainAppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MainAppStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() initial,
    required TResult Function(String? signInError) unauthenticated,
    required TResult Function() authenticatedFirstLogin,
    required TResult Function() loading,
    required TResult Function() networkError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? initial,
    TResult? Function(String? signInError)? unauthenticated,
    TResult? Function()? authenticatedFirstLogin,
    TResult? Function()? loading,
    TResult? Function()? networkError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? initial,
    TResult Function(String? signInError)? unauthenticated,
    TResult Function()? authenticatedFirstLogin,
    TResult Function()? loading,
    TResult Function()? networkError,
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
    required TResult Function(_MainAppStateAuthenticated value) authenticated,
    required TResult Function(_MainAppStateInitial value) initial,
    required TResult Function(_MainAppStateUnauthenticated value)
        unauthenticated,
    required TResult Function(_MainAppStateAuthenticatedFirstLogin value)
        authenticatedFirstLogin,
    required TResult Function(_MainAppStateLoading value) loading,
    required TResult Function(_MainAppStateNetworkError value) networkError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainAppStateAuthenticated value)? authenticated,
    TResult? Function(_MainAppStateInitial value)? initial,
    TResult? Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult? Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult? Function(_MainAppStateLoading value)? loading,
    TResult? Function(_MainAppStateNetworkError value)? networkError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainAppStateAuthenticated value)? authenticated,
    TResult Function(_MainAppStateInitial value)? initial,
    TResult Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult Function(_MainAppStateLoading value)? loading,
    TResult Function(_MainAppStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MainAppStateInitial implements MainAppState {
  const factory _MainAppStateInitial() = _$_MainAppStateInitial;
}

/// @nodoc
abstract class _$$_MainAppStateUnauthenticatedCopyWith<$Res> {
  factory _$$_MainAppStateUnauthenticatedCopyWith(
          _$_MainAppStateUnauthenticated value,
          $Res Function(_$_MainAppStateUnauthenticated) then) =
      __$$_MainAppStateUnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? signInError});
}

/// @nodoc
class __$$_MainAppStateUnauthenticatedCopyWithImpl<$Res>
    extends _$MainAppStateCopyWithImpl<$Res, _$_MainAppStateUnauthenticated>
    implements _$$_MainAppStateUnauthenticatedCopyWith<$Res> {
  __$$_MainAppStateUnauthenticatedCopyWithImpl(
      _$_MainAppStateUnauthenticated _value,
      $Res Function(_$_MainAppStateUnauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInError = freezed,
  }) {
    return _then(_$_MainAppStateUnauthenticated(
      signInError: freezed == signInError
          ? _value.signInError
          : signInError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MainAppStateUnauthenticated implements _MainAppStateUnauthenticated {
  const _$_MainAppStateUnauthenticated({this.signInError});

  @override
  final String? signInError;

  @override
  String toString() {
    return 'MainAppState.unauthenticated(signInError: $signInError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainAppStateUnauthenticated &&
            (identical(other.signInError, signInError) ||
                other.signInError == signInError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainAppStateUnauthenticatedCopyWith<_$_MainAppStateUnauthenticated>
      get copyWith => __$$_MainAppStateUnauthenticatedCopyWithImpl<
          _$_MainAppStateUnauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() initial,
    required TResult Function(String? signInError) unauthenticated,
    required TResult Function() authenticatedFirstLogin,
    required TResult Function() loading,
    required TResult Function() networkError,
  }) {
    return unauthenticated(signInError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? initial,
    TResult? Function(String? signInError)? unauthenticated,
    TResult? Function()? authenticatedFirstLogin,
    TResult? Function()? loading,
    TResult? Function()? networkError,
  }) {
    return unauthenticated?.call(signInError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? initial,
    TResult Function(String? signInError)? unauthenticated,
    TResult Function()? authenticatedFirstLogin,
    TResult Function()? loading,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(signInError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainAppStateAuthenticated value) authenticated,
    required TResult Function(_MainAppStateInitial value) initial,
    required TResult Function(_MainAppStateUnauthenticated value)
        unauthenticated,
    required TResult Function(_MainAppStateAuthenticatedFirstLogin value)
        authenticatedFirstLogin,
    required TResult Function(_MainAppStateLoading value) loading,
    required TResult Function(_MainAppStateNetworkError value) networkError,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainAppStateAuthenticated value)? authenticated,
    TResult? Function(_MainAppStateInitial value)? initial,
    TResult? Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult? Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult? Function(_MainAppStateLoading value)? loading,
    TResult? Function(_MainAppStateNetworkError value)? networkError,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainAppStateAuthenticated value)? authenticated,
    TResult Function(_MainAppStateInitial value)? initial,
    TResult Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult Function(_MainAppStateLoading value)? loading,
    TResult Function(_MainAppStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _MainAppStateUnauthenticated implements MainAppState {
  const factory _MainAppStateUnauthenticated({final String? signInError}) =
      _$_MainAppStateUnauthenticated;

  String? get signInError;
  @JsonKey(ignore: true)
  _$$_MainAppStateUnauthenticatedCopyWith<_$_MainAppStateUnauthenticated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MainAppStateAuthenticatedFirstLoginCopyWith<$Res> {
  factory _$$_MainAppStateAuthenticatedFirstLoginCopyWith(
          _$_MainAppStateAuthenticatedFirstLogin value,
          $Res Function(_$_MainAppStateAuthenticatedFirstLogin) then) =
      __$$_MainAppStateAuthenticatedFirstLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainAppStateAuthenticatedFirstLoginCopyWithImpl<$Res>
    extends _$MainAppStateCopyWithImpl<$Res,
        _$_MainAppStateAuthenticatedFirstLogin>
    implements _$$_MainAppStateAuthenticatedFirstLoginCopyWith<$Res> {
  __$$_MainAppStateAuthenticatedFirstLoginCopyWithImpl(
      _$_MainAppStateAuthenticatedFirstLogin _value,
      $Res Function(_$_MainAppStateAuthenticatedFirstLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainAppStateAuthenticatedFirstLogin
    implements _MainAppStateAuthenticatedFirstLogin {
  const _$_MainAppStateAuthenticatedFirstLogin();

  @override
  String toString() {
    return 'MainAppState.authenticatedFirstLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainAppStateAuthenticatedFirstLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() initial,
    required TResult Function(String? signInError) unauthenticated,
    required TResult Function() authenticatedFirstLogin,
    required TResult Function() loading,
    required TResult Function() networkError,
  }) {
    return authenticatedFirstLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? initial,
    TResult? Function(String? signInError)? unauthenticated,
    TResult? Function()? authenticatedFirstLogin,
    TResult? Function()? loading,
    TResult? Function()? networkError,
  }) {
    return authenticatedFirstLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? initial,
    TResult Function(String? signInError)? unauthenticated,
    TResult Function()? authenticatedFirstLogin,
    TResult Function()? loading,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (authenticatedFirstLogin != null) {
      return authenticatedFirstLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainAppStateAuthenticated value) authenticated,
    required TResult Function(_MainAppStateInitial value) initial,
    required TResult Function(_MainAppStateUnauthenticated value)
        unauthenticated,
    required TResult Function(_MainAppStateAuthenticatedFirstLogin value)
        authenticatedFirstLogin,
    required TResult Function(_MainAppStateLoading value) loading,
    required TResult Function(_MainAppStateNetworkError value) networkError,
  }) {
    return authenticatedFirstLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainAppStateAuthenticated value)? authenticated,
    TResult? Function(_MainAppStateInitial value)? initial,
    TResult? Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult? Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult? Function(_MainAppStateLoading value)? loading,
    TResult? Function(_MainAppStateNetworkError value)? networkError,
  }) {
    return authenticatedFirstLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainAppStateAuthenticated value)? authenticated,
    TResult Function(_MainAppStateInitial value)? initial,
    TResult Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult Function(_MainAppStateLoading value)? loading,
    TResult Function(_MainAppStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (authenticatedFirstLogin != null) {
      return authenticatedFirstLogin(this);
    }
    return orElse();
  }
}

abstract class _MainAppStateAuthenticatedFirstLogin implements MainAppState {
  const factory _MainAppStateAuthenticatedFirstLogin() =
      _$_MainAppStateAuthenticatedFirstLogin;
}

/// @nodoc
abstract class _$$_MainAppStateLoadingCopyWith<$Res> {
  factory _$$_MainAppStateLoadingCopyWith(_$_MainAppStateLoading value,
          $Res Function(_$_MainAppStateLoading) then) =
      __$$_MainAppStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainAppStateLoadingCopyWithImpl<$Res>
    extends _$MainAppStateCopyWithImpl<$Res, _$_MainAppStateLoading>
    implements _$$_MainAppStateLoadingCopyWith<$Res> {
  __$$_MainAppStateLoadingCopyWithImpl(_$_MainAppStateLoading _value,
      $Res Function(_$_MainAppStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainAppStateLoading implements _MainAppStateLoading {
  const _$_MainAppStateLoading();

  @override
  String toString() {
    return 'MainAppState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MainAppStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() initial,
    required TResult Function(String? signInError) unauthenticated,
    required TResult Function() authenticatedFirstLogin,
    required TResult Function() loading,
    required TResult Function() networkError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? initial,
    TResult? Function(String? signInError)? unauthenticated,
    TResult? Function()? authenticatedFirstLogin,
    TResult? Function()? loading,
    TResult? Function()? networkError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? initial,
    TResult Function(String? signInError)? unauthenticated,
    TResult Function()? authenticatedFirstLogin,
    TResult Function()? loading,
    TResult Function()? networkError,
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
    required TResult Function(_MainAppStateAuthenticated value) authenticated,
    required TResult Function(_MainAppStateInitial value) initial,
    required TResult Function(_MainAppStateUnauthenticated value)
        unauthenticated,
    required TResult Function(_MainAppStateAuthenticatedFirstLogin value)
        authenticatedFirstLogin,
    required TResult Function(_MainAppStateLoading value) loading,
    required TResult Function(_MainAppStateNetworkError value) networkError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainAppStateAuthenticated value)? authenticated,
    TResult? Function(_MainAppStateInitial value)? initial,
    TResult? Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult? Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult? Function(_MainAppStateLoading value)? loading,
    TResult? Function(_MainAppStateNetworkError value)? networkError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainAppStateAuthenticated value)? authenticated,
    TResult Function(_MainAppStateInitial value)? initial,
    TResult Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult Function(_MainAppStateLoading value)? loading,
    TResult Function(_MainAppStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MainAppStateLoading implements MainAppState {
  const factory _MainAppStateLoading() = _$_MainAppStateLoading;
}

/// @nodoc
abstract class _$$_MainAppStateNetworkErrorCopyWith<$Res> {
  factory _$$_MainAppStateNetworkErrorCopyWith(
          _$_MainAppStateNetworkError value,
          $Res Function(_$_MainAppStateNetworkError) then) =
      __$$_MainAppStateNetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainAppStateNetworkErrorCopyWithImpl<$Res>
    extends _$MainAppStateCopyWithImpl<$Res, _$_MainAppStateNetworkError>
    implements _$$_MainAppStateNetworkErrorCopyWith<$Res> {
  __$$_MainAppStateNetworkErrorCopyWithImpl(_$_MainAppStateNetworkError _value,
      $Res Function(_$_MainAppStateNetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainAppStateNetworkError implements _MainAppStateNetworkError {
  const _$_MainAppStateNetworkError();

  @override
  String toString() {
    return 'MainAppState.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainAppStateNetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() initial,
    required TResult Function(String? signInError) unauthenticated,
    required TResult Function() authenticatedFirstLogin,
    required TResult Function() loading,
    required TResult Function() networkError,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? initial,
    TResult? Function(String? signInError)? unauthenticated,
    TResult? Function()? authenticatedFirstLogin,
    TResult? Function()? loading,
    TResult? Function()? networkError,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? initial,
    TResult Function(String? signInError)? unauthenticated,
    TResult Function()? authenticatedFirstLogin,
    TResult Function()? loading,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainAppStateAuthenticated value) authenticated,
    required TResult Function(_MainAppStateInitial value) initial,
    required TResult Function(_MainAppStateUnauthenticated value)
        unauthenticated,
    required TResult Function(_MainAppStateAuthenticatedFirstLogin value)
        authenticatedFirstLogin,
    required TResult Function(_MainAppStateLoading value) loading,
    required TResult Function(_MainAppStateNetworkError value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainAppStateAuthenticated value)? authenticated,
    TResult? Function(_MainAppStateInitial value)? initial,
    TResult? Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult? Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult? Function(_MainAppStateLoading value)? loading,
    TResult? Function(_MainAppStateNetworkError value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainAppStateAuthenticated value)? authenticated,
    TResult Function(_MainAppStateInitial value)? initial,
    TResult Function(_MainAppStateUnauthenticated value)? unauthenticated,
    TResult Function(_MainAppStateAuthenticatedFirstLogin value)?
        authenticatedFirstLogin,
    TResult Function(_MainAppStateLoading value)? loading,
    TResult Function(_MainAppStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _MainAppStateNetworkError implements MainAppState {
  const factory _MainAppStateNetworkError() = _$_MainAppStateNetworkError;
}
