// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashActionTearOff {
  const _$SplashActionTearOff();

// ignore: unused_element
  _CheckAuthentication checkAuthentication() {
    return _CheckAuthentication();
  }
}

// ignore: unused_element
const $SplashAction = _$SplashActionTearOff();

mixin _$SplashAction {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthentication(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthentication(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthentication(_CheckAuthentication value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthentication(_CheckAuthentication value),
    @required Result orElse(),
  });
}

abstract class $SplashActionCopyWith<$Res> {
  factory $SplashActionCopyWith(
          SplashAction value, $Res Function(SplashAction) then) =
      _$SplashActionCopyWithImpl<$Res>;
}

class _$SplashActionCopyWithImpl<$Res> implements $SplashActionCopyWith<$Res> {
  _$SplashActionCopyWithImpl(this._value, this._then);

  final SplashAction _value;

  // ignore: unused_field
  final $Res Function(SplashAction) _then;
}

abstract class _$CheckAuthenticationCopyWith<$Res> {
  factory _$CheckAuthenticationCopyWith(_CheckAuthentication value,
          $Res Function(_CheckAuthentication) then) =
      __$CheckAuthenticationCopyWithImpl<$Res>;
}

class __$CheckAuthenticationCopyWithImpl<$Res>
    extends _$SplashActionCopyWithImpl<$Res>
    implements _$CheckAuthenticationCopyWith<$Res> {
  __$CheckAuthenticationCopyWithImpl(
      _CheckAuthentication _value, $Res Function(_CheckAuthentication) _then)
      : super(_value, (v) => _then(v as _CheckAuthentication));

  @override
  _CheckAuthentication get _value => super._value as _CheckAuthentication;
}

class _$_CheckAuthentication implements _CheckAuthentication {
  _$_CheckAuthentication();

  @override
  String toString() {
    return 'SplashAction.checkAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthentication(),
  }) {
    assert(checkAuthentication != null);
    return checkAuthentication();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthentication(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthentication != null) {
      return checkAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthentication(_CheckAuthentication value),
  }) {
    assert(checkAuthentication != null);
    return checkAuthentication(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthentication(_CheckAuthentication value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthentication != null) {
      return checkAuthentication(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthentication implements SplashAction {
  factory _CheckAuthentication() = _$_CheckAuthentication;
}

class _$SplashStateTearOff {
  const _$SplashStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Authenticated authenticated() {
    return _Authenticated();
  }

// ignore: unused_element
  _UnAuthenticated unAuthenticated() {
    return _UnAuthenticated();
  }
}

// ignore: unused_element
const $SplashState = _$SplashStateTearOff();

mixin _$SplashState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  });
}

abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;

  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplashState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SplashState {
  const factory _Loading() = _$_Loading;
}

abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

class __$AuthenticatedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

class _$_Authenticated implements _Authenticated {
  _$_Authenticated();

  @override
  String toString() {
    return 'SplashState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements SplashState {
  factory _Authenticated() = _$_Authenticated;
}

abstract class _$UnAuthenticatedCopyWith<$Res> {
  factory _$UnAuthenticatedCopyWith(
          _UnAuthenticated value, $Res Function(_UnAuthenticated) then) =
      __$UnAuthenticatedCopyWithImpl<$Res>;
}

class __$UnAuthenticatedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$UnAuthenticatedCopyWith<$Res> {
  __$UnAuthenticatedCopyWithImpl(
      _UnAuthenticated _value, $Res Function(_UnAuthenticated) _then)
      : super(_value, (v) => _then(v as _UnAuthenticated));

  @override
  _UnAuthenticated get _value => super._value as _UnAuthenticated;
}

class _$_UnAuthenticated implements _UnAuthenticated {
  _$_UnAuthenticated();

  @override
  String toString() {
    return 'SplashState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements SplashState {
  factory _UnAuthenticated() = _$_UnAuthenticated;
}
