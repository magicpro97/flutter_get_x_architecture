import 'package:dio/dio.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/base_response.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/request_method.dart';

class DioRequestBuilder {
  String baseUrl;
  String newBaseUrl;
  String endPointUrl;
  RequestMethod requestMethod;
  Map<String, String> headers;
  Map<String, dynamic> params;
  int timeout;
}

class DioRequest {
  Dio _dio = Dio();

  String _baseUrl;
  String _newBaseUrl;
  String _endPointUrl;
  RequestMethod _requestMethod;
  Map<String, String> _headers;
  Map<String, dynamic> _params;
  int _timeout;

  DioRequest(DioRequestBuilder builder) {
    _baseUrl = builder.baseUrl;
    _newBaseUrl = builder.newBaseUrl;
    _endPointUrl = builder.endPointUrl;
    _requestMethod = builder.requestMethod;
    _headers = builder.headers;
    _params = builder.params;
    _timeout = builder.timeout;
  }

  Future<BaseResponse> doRequest() async {
    _dio.options.connectTimeout = _timeout;
    _dio.options.receiveTimeout = _timeout;

    if (_baseUrl != null && _baseUrl.isNotEmpty) {
      _dio.options.baseUrl = _baseUrl;
    }

    if (_newBaseUrl != null && _newBaseUrl.isNotEmpty) {
      _dio.options.baseUrl = _newBaseUrl;
    }

    if (_headers != null) {
      _dio.options.headers = _headers;
    }

    if ((_headers == null) ||
        (_headers != null && !_headers.containsKey("content-type"))) {
      _dio.options.headers["content-type"] = "application/json";
    }

    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions requestOption) {
//          handle before request
      print("dioInterceptors=>onRequest=$requestOption");
    }, onResponse: (Response response) {
//          handle after request
      print("dioInterceptors=>onResponse=$response");
    }, onError: (DioError dioError) {
//          handle request error
      print("dioInterceptors=>onError=$dioError");
    }));

    print(
        "dioRequest=>_endPoint = $_endPointUrl, _requestMethod = _$_requestMethod, _params = _$_params, _headers = _$_headers");

    BaseResponse baseResponse = BaseResponse();
    Response dioResponse;

    switch (_requestMethod) {
      case RequestMethod.POST:
        dioResponse = await _dio.post(_endPointUrl, data: _params);
        break;
      case RequestMethod.GET:
        dioResponse = await _dio.get(_endPointUrl, queryParameters: _params);
        break;
      case RequestMethod.PUT:
        dioResponse = await _dio.put(_endPointUrl, data: _params);
        break;
      default:
        dioResponse = await _dio.get(_endPointUrl, queryParameters: _params);
        break;
    }

    Map<String, String> dioResponseHeader = Map();
    dioResponseHeader['content-type'] =
        dioResponse.headers.value('content-type');
    dioResponseHeader['content-length'] =
        dioResponse.headers.value('content-length');
    dioResponseHeader['content-encoding'] =
        dioResponse.headers.value('content-encoding');
    dioResponseHeader['www-authenticate'] =
        dioResponse.headers.value('www-authenticate');

    baseResponse.statusCode = dioResponse.statusCode;
    baseResponse.isRedirect = dioResponse.isRedirect;
    baseResponse.headers = dioResponseHeader;
    baseResponse.body = dioResponse.data;

    return baseResponse;
  }
}
