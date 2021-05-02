import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

/// Example: And I wait
Future<void> iWait(WidgetTester tester) async {
  await mockNetworkImages(() async {
    await tester.pumpAndSettle();
  });
}
