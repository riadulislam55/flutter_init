import '../models/theme/theme.model.dart';

abstract class ThemeRepository {
  Future<ThemeModel> getTheme();
  Future<void> setTheme(ThemeModel theme);
}
