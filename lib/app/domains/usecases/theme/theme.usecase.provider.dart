import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/cache/theme/repositories/theme.provider.dart';
import 'theme.usecase.dart';

final themeUseCaseProvider = Provider(
    (ref) => ThemeUseCase(repository: ref.watch(themeRepositoryProvider)));
