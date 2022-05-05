import 'package:dio/dio.dart';
import 'package:my_clean_arch/data/api/api_day.dart';
import 'package:my_clean_arch/data/api/request/get_day_body.dart';

class SunriseService {
  static const _baseUrl = 'https://api.sunrise-sunset.org';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _baseUrl),
  );

  Future<ApiDay> getDay(GetDayBody body) async {
    final response = await _dio.get(
      '/json',
      queryParameters: body.toApi(),
    );

    return ApiDay.fromApi(response.data);
  }
}
