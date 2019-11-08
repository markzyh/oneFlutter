import 'package:v2exflutter/config/dev.dart' as BaseUrl;
import 'package:dio/dio.dart';

class HttpRequest {
  static Dio getDio() {
    Dio dio = Dio();
    dio.options.baseUrl = BaseUrl.baseUrl;
    dio.options.connectTimeout = 5000; //5s
    dio.options.receiveTimeout = 3000;
    return dio;
  }

  static httpRequest(url, {params, method = "POST"}) async {
    Dio dio = getDio();
    Response response;
    try {
      response = await dio.request(
        url,
        options: Options(method: method, responseType: ResponseType.plain),
      );
    } catch (e) {
      print('请求发生错误：$e');
    }

    return response;
  }
}
