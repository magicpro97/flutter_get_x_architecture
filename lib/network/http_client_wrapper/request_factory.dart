import 'package:flutter_get_x_architecture/network/http_client_wrapper/base_response.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/dio_request.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/request_method.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/request_type.dart';

class BaseRequestFactoryBuilder {
  String baseUrl;
  String newBaseUrl;
  String endPointUrl;
  RequestMethod requestMethod;
  RequestType requestType;
  Map<String, String> headers;
  Map<String, dynamic> params;
  int timeout;
}

class BaseRequestFactory {
  String _baseUrl;
  String _newBaseUrl;
  String _endPointUrl;
  RequestMethod _requestMethod;
  RequestType _requestType;
  Map<String, String> _headers;
  Map<String, dynamic> _params;
  int _timeout;

  BaseRequestFactory(BaseRequestFactoryBuilder builder) {
    _baseUrl = builder.baseUrl;
    _newBaseUrl = builder.newBaseUrl;
    _endPointUrl = builder.endPointUrl;
    _requestMethod = builder.requestMethod;
    _requestType = builder.requestType;
    _headers = builder.headers;
    _params = builder.params;
    _timeout = builder.timeout;
  }

  Future<BaseResponse> doRequest() {
    DioRequestBuilder dioRequestBuilder = DioRequestBuilder()
      ..baseUrl = _baseUrl
      ..newBaseUrl = _newBaseUrl
      ..endPointUrl = _endPointUrl
      ..requestMethod = _requestMethod
      ..headers = _headers
      ..params = _params
      ..timeout = _timeout;
    DioRequest dioRequest = DioRequest(dioRequestBuilder);

    switch (_requestType) {
      case RequestType.DIO:
        return dioRequest.doRequest();
      default:
        return dioRequest.doRequest();
    }
  }
}
