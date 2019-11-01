import 'package:v2exflutter/config/dev.dart' as BaseUrl;
import 'package:dio/dio.dart';

// import 'package:json_annotation/json_annotation.dart';

class HttpRequest {
  // String url;
  // var params;
  // String method;

  // HttpRequest(this.url, this.params, this.method);

  static BaseOptions _options = BaseOptions(
    baseUrl: BaseUrl.baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  static Dio getDio() {
    Dio dio = Dio(_options);
    return dio;
  }

  static httpRequest(url, {params, method = 'POST'}) async {
    print('开始');
    Dio dio = getDio();
    Response response;
    try {
      response = await dio.get(
        'api/topics/hot.json',
      );
    } catch (e) {
      print('get请求发生错误：$e');
    }
    // try {
    //   Response response = await Dio().get("http://www.baidu.com");
    //   print(response);
    // } catch (e) {
    //   print(e);
    // }
    return response.data;
  }
}
