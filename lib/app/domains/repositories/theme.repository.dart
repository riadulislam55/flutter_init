import 'package:flutter/material.dart';

import '../../core/utils/type_defs.dart';

abstract class ThemeRepository {
  FutureEither<Brightness> getTheme();
  FutureEitherVoid setTheme(Brightness theme);
}
