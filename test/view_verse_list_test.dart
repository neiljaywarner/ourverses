// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_icon.dart';
import './step/i_see_text.dart';
import './step/i_tap_icon.dart';

void main() {
  group('''User can navigate to verse list''', () {
    testWidgets('''App opens and I see an initial verse on home screen''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeIcon(tester, Icons.home);
      await iSeeText(tester, 'Psalms 119:9-11 WEB');
    });
    testWidgets('''Tapping the list icon goes to the verses screen''', (tester) async {
      await theAppIsRunning(tester);
      await iTapIcon(tester, Icons.format_align_left_outlined);
      await iSeeText(tester, 'Placeholder for verse list');
    });
  });
}
