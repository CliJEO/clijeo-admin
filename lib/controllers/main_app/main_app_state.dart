import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_app_state.freezed.dart';

@freezed
abstract class MainAppState with _$MainAppState {
  const factory MainAppState.authenticated() = _MainAppStateAuthenticated;
  const factory MainAppState.initial() = _MainAppStateInitial;
  const factory MainAppState.unauthenticated({String? signInError}) =
      _MainAppStateUnauthenticated;
  const factory MainAppState.authenticatedFirstLogin() =
      _MainAppStateAuthenticatedFirstLogin;
  const factory MainAppState.loading() = _MainAppStateLoading;
  const factory MainAppState.networkError() = _MainAppStateNetworkError;
}
