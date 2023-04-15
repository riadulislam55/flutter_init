import 'package:get_it/get_it.dart';

import '../../../routes/index.dart';
import 'app.localization.dart';

extension StringTranslate on String {
  String get tr =>
      AppLocalizations.of(GetIt.instance<BuildContext>()).translate(this);
}
