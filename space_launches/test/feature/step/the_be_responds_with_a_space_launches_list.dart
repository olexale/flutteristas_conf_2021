import 'package:flutter_test/flutter_test.dart';
import 'package:space_launches/di/injection.dart';
import 'package:dio/dio.dart';

import '../../network/launch_upcoming_interceptor.dart';

Future<void> theBeRespondsWithASpaceLaunchesList(WidgetTester tester) async {
  final dio = getIt<Dio>();
  dio.interceptors.add(LaunchUpcomingInterceptor());
}
