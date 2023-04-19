import '../../../core/utils/type_defs.dart';
import '../../models/theme/theme.model.dart';
import '../../repositories/theme.repository.dart';

class ThemeUseCase {
  final ThemeRepository _repository;

  ThemeUseCase({required ThemeRepository repository})
      : _repository = repository;

  FutureEither<ThemeModel> getTheme() async {
    return await _repository.getTheme();
  }

  FutureEitherVoid saveTheme(ThemeModel theme) async {
    return await _repository.setTheme(theme);
  }
}
