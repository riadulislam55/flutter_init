import '../../core/utils/type_defs.dart';
import '../models/theme/theme.model.dart';

abstract class ThemeRepository {
  FutureEither<ThemeModel> getTheme();
  FutureEitherVoid setTheme(ThemeModel theme);
}
