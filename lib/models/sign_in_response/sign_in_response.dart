import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response.g.dart';
part 'sign_in_response.freezed.dart';

@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse(
      {required bool firstLogin, required String jwt}) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _SignInResponse.fromJson(json);
}
