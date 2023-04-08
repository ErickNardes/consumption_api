import 'package:consumption_api/app/features/home/products/external/http/i_http_client.dart';
import 'package:http/http.dart' as http;

class HttpClient implements IHttpClient {
  final client = http.Client();
  @override
  Future get({required String url}) async {
    return await client.get(Uri.parse(url));
  }
}
