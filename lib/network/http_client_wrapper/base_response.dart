class BaseResponse {
  int statusCode;
  dynamic body;
  bool isRedirect;
  Map<String, String> headers;

  BaseResponse({this.statusCode, this.body, this.isRedirect, this.headers});
}