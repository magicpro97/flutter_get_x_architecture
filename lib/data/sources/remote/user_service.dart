import 'package:dio/dio.dart';
import 'package:flutter_get_x_architecture/common/config/api.dart';
import 'package:flutter_get_x_architecture/data/models/responses/login_response.dart';
import 'package:flutter_get_x_architecture/data/sources/remote/base_remote_datasource.dart';

abstract class UserService extends BaseRemoteDataSource {
  UserService(Dio dio) : super(dio);

  Future<LoginResponse> login({String userLogin, String password});
}

class UserServiceImpl extends UserService {
  UserServiceImpl(Dio dio) : super(dio);

  @override
  Future<LoginResponse> login({String userLogin, String password}) => dio.post(
        UserApi.systemLogin,
        data: {
          'userLogin': userLogin,
          'password': password,
        },
      ).then((value) => LoginResponse.fromJson(value.data));
}
