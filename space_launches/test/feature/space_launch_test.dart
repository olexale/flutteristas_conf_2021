// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/the_be_responds_with_a_space_launches_list.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/the_be_responds_with_an_error.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await theAppIsRunning(tester);
  }
  group('Space Launches test', () {
    testWidgets('Space launches list is loaded', (tester) async {
      await bddSetUp(tester);
      await theBeRespondsWithASpaceLaunchesList(tester);
      await iWait(tester);
      await iSeeText(tester, 'Falcon 9 Block 5 | SpX USCV-2 (NASA Crew Flight 2)');
    });
    testWidgets('Space launches list is not loaded', (tester) async {
      await bddSetUp(tester);
      await theBeRespondsWithAnError(tester);
      await iWait(tester);
      await iSeeText(tester, '💔\nSomething went wrong');
    });
  });
}
