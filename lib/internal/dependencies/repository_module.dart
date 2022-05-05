import 'package:my_clean_arch/data/repository/day_data_repository.dart';
import 'package:my_clean_arch/domain/repository/day_repository.dart';
import 'package:my_clean_arch/internal/dependencies/api_module.dart';

class RepositoryModule {
  static DayRepository? _dayRepository;

  static DayRepository dayRepository() {
    return _dayRepository ??= DayDataRepository(ApiModule.apiUtil());
  }
}
