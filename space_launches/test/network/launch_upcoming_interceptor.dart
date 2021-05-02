import 'package:dio/dio.dart';

import 'launch_upcoming_success.dart';

class LaunchUpcomingInterceptor extends Interceptor {
  LaunchUpcomingInterceptor({
    this.shouldFail = false,
  });

  final bool shouldFail;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path == '/launch/upcoming') {
      return shouldFail
          ? handler.reject(DioError(
              requestOptions: options,
              response: Response(
                requestOptions: options,
                statusCode: 403,
              )))
          : handler.resolve(Response<Map<String, dynamic>>(
              requestOptions: options,
              data: spaceLaunchList,
            ));
    }
    super.onRequest(options, handler);
  }
}
