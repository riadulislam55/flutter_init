import 'package:get_it/get_it.dart';

import '../../../service/api.service.dart';
import 'auth.data.interface.dart';

class AuthDataRepository implements IAuthAPI {
  // dio need to call from get it

  final apiService = GetIt.instance<ApiService>();
}
