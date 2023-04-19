import '../../../routes/index.dart';
import 'app.localization.dart';

extension StringTranslate on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)?.translate(this) ?? this;
  }
}
