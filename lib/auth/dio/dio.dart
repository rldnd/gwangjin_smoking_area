import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor {
  CustomInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    print('[REQUEST]:: ${options.data}');
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    print('[RESPONSE]:: ${response.data}');
  }
}
