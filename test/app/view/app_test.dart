@Skip('Skipping this test while hello world BDD testing counter')

// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:ourverses/app/app.dart';
import 'package:ourverses/home/home_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders verses screen', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomeScreen), findsOneWidget);
      final verseListButton = find.text('Verses');
      expect(verseListButton, findsOneWidget);
      expect(find.text('Psalms 119:9-11 WEB'), findsOneWidget);
      await tester.tap(verseListButton);
      await tester.pumpAndSettle();
      expect(find.text('Placeholder for verse list'), findsOneWidget);


    });
  });
}
