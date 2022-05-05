import 'package:my_clean_arch/data/api/apt_util.dart';
import 'package:my_clean_arch/data/api/service/sunrise_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    return _apiUtil ??= ApiUtil(SunriseService());
  }
}
