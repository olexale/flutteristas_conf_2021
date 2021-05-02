import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:space_launches/di/injection.dart';
import 'package:space_launches/main.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await getIt.reset();
  configureDI(environment: Environment.prod);

  await tester.pumpWidget(SpaceLaunchesApp());
}
