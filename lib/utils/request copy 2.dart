import 'package:dio/dio.dart';
import 'package:v2exflutter/config/dev.dart' as BaseUrl;

class HttpUtlis {
  static Dio _dio;
  static BaseOptions _options = BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 3000,
    baseUrl: BaseUrl.baseUrl,
    // contentType: ContentType.json,
  );

  static Dio buildDio() {
    if (_dio == null) {
      _dio = Dio(_options);
    }
    return _dio;
  }

  static get(String url, {options, Function success, Function failure}) async {
    Dio dio = buildDio();
    try {
      Response response = await dio.get(url, options: options);
      success(response.data);
    } catch (exception) {
      failure(exception);
    }
  }

  static post(String url,
      {params, options, Function success, Function failure}) async {
    Dio dio = buildDio();
    try {
      Response response = await dio.post(url, data: params, options: options);
      success(response.data);
    } catch (exception) {
      failure(exception);
    }
  }
}
