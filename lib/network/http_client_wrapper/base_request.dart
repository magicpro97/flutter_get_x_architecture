import 'dart:async';

import 'package:flutter_get_x_architecture/network/http_client_wrapper/base_response.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/request_factory.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/request_method.dart';
import 'package:flutter_get_x_architecture/network/http_client_wrapper/request_type.dart';

class BaseRequest {
  String _newBaseUrl;
  String _endPointUrl;
  RequestMethod _requestMethod;
  RequestType _requestType = RequestType.DIO;
  Map<String, String> _headers;
  Map<String, dynamic> _params;
  int _timeout = 15 * 1000;

  BaseRequest changeBaseUrl(String baseUrl) {
    _newBaseUrl = baseUrl;
    return this;
  }

  BaseRequest addEndPointUrl(String url) {
    _endPointUrl = url;
    return this;
  }

  BaseRequest addRequestMethod(RequestMethod requestMethod) {
    _requestMethod = requestMethod;
    return this;
  }

  BaseRequest addRequestType(RequestType requestType) {
    _requestType = requestType;
    return this;
  }

  BaseRequest addHeaders(Map<String, String> header) {
    _headers = header;
    return this;
  }

  BaseRequest addParams(Map<String, dynamic> params) {
    _params = params;
    return this;
  }

  BaseRequest setTimeout(int timeout) {
    _timeout = timeout;
    return this;
  }

  Future<BaseResponse> doRequest() async {
    if (_endPointUrl == null || _endPointUrl.isEmpty)
      throw Exception("Url must not be null");
    if (_requestMethod == null)
      throw Exception("Request type must not be null");

    BaseRequestFactoryBuilder baseRequestBuilder = BaseRequestFactoryBuilder()
      ..baseUrl = _newBaseUrl
      ..endPointUrl = _endPointUrl
      ..requestMethod = _requestMethod
      ..requestType = _requestType
      ..headers = _headers
      ..params = _params
      ..timeout = _timeout;

    if (_newBaseUrl != null && _newBaseUrl.length > 0) {
      baseRequestBuilder.newBaseUrl = _newBaseUrl;
    }

    BaseRequestFactory baseRequestFactory =
        new BaseRequestFactory(baseRequestBuilder);

    return baseRequestFactory.doRequest();
  }
}
