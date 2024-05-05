abstract class ApiConsumer{
  Future<dynamic> get(String path , {Map<String, dynamic>? queryParameters})async{}
  Future<dynamic> post(String path , {Map<String, dynamic>? queryParameters, Map<String, dynamic>? body})async{}
  Future<dynamic> put(String path , {Map<String, dynamic>? queryParameters, Map<String, dynamic>? body})async{}
}