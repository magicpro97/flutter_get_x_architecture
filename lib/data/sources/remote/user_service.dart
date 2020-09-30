import 'package:dio/dio.dart';
import 'package:flutter_getx_architecture/data/models/responses/login_response.dart';
import 'package:flutter_getx_architecture/data/sources/remote/base_remote_datasource.dart';
import 'package:retrofit/http.dart';

part 'user_service.g.dart';

abstract class UserService extends BaseRemoteDataSource {
  Future<LoginResponse> login(String userLogin, String password);
}

@RestApi()
abstract class UserServiceImpl extends UserService {
  factory UserServiceImpl(Dio dio, {String baseUrl}) = _UserServiceImpl;

  @override
  @POST("/abc")
  Future<LoginResponse> login(@Field('userName') userLogin, @Field('password') String password);
}