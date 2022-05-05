import 'package:my_clean_arch/data/api/model/api_day.dart';
import 'package:my_clean_arch/domain/model/day.dart';

class DayMapper {
  static Day fromApi(ApiDay day) {
    return Day(
      sunrise: DateTime.tryParse(day.sunrise) as DateTime,
      sunset: DateTime.tryParse(day.sunset) as DateTime,
      solarNoon: DateTime.tryParse(day.solarNoon) as DateTime,
      dayLength: day.dayLength.toInt(),
    );
  }
}
