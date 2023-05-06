import 'package:flutter_init/app/core/app.initializer.dart';
import 'package:flutter_init/app/module/common/controllers/states/theme_state.dart';
import 'package:flutter_init/app/module/common/controllers/theme.controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  group("ThemeTesting", () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    test('should get theme and emit new state', () async {
      expect(1, equals(1));
      await AppInitializer.init();
      final notifier = container.read(themeControllerProvider.notifier);

      await notifier.getTheme();

      final state = container.read(themeControllerProvider);

      expect(state, isA<ThemeState>);
      // expect((state as LoadedThemeState).data, equals())
    });
  });
}
