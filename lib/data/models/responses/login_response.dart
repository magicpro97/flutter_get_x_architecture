import 'package:flutter_getx_architecture/data/mapper/boolean_mapper.dart';
import 'package:flutter_getx_architecture/data/models/responses/base_response.dart';
import 'package:flutter_getx_architecture/data/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'activated', fromJson: toBool)
  final bool isActivated;

  @JsonKey(name: 'verified', fromJson: toBool)
  final bool isVerify;

  final User user;

  LoginResponse({
    this.accessToken,
    this.isActivated,
    this.isVerify,
    this.user,
    int code,
    String message,
  }) : super(
          code: code,
          message: message,
        );

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  List<Object> get props => [accessToken];
}
