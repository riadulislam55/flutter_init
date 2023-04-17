import '../../models/theme/theme.model.dart';
import '../../repositories/theme.repository.dart';

class ThemeUseCase {
  final ThemeRepository _repository;

  ThemeUseCase({required ThemeRepository repository})
      : _repository = repository;

  Future<ThemeModel> getTheme() async {
    return await _repository.getTheme();
  }

  Future<void> saveTheme(ThemeModel theme) async {
    await _repository.setTheme(theme);
  }
}
