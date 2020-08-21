import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_get_x_architecture/data/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_bloc.freezed.dart';

@freezed
abstract class SplashAction with _$SplashAction {
  factory SplashAction.checkAuthentication() = _CheckAuthentication;
}

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;

  const factory SplashState.loading() = _Loading;

  factory SplashState.authenticated() = _Authenticated;

  factory SplashState.unAuthenticated() = _UnAuthenticated;
}

class SplashBloc extends Bloc<SplashAction, SplashState> {
  final UserRepository _userRepository;

  SplashBloc(this._userRepository) : super(SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(SplashAction event) async* {
    yield SplashState.loading();
    yield event.when(
      checkAuthentication: () {
        if (_userRepository.isLogin()) {
          return SplashState.authenticated();
        } else {
          return SplashState.unAuthenticated();
        }
      },
    );
  }
}
