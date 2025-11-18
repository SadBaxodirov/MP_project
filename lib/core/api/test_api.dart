import 'api_client.dart';
import '../models/test.dart';

class TestApi {
  final ApiClient client;

  TestApi(this.client);

  Future<List<Test>> getTests() async {
    final data = await client.get('/tests/');
    return (data as List).map((json) => Test.fromJson(json)).toList();
  }

  Future<Test> getTest(int id) async {
    final data = await client.get('/tests/$id/');
    return Test.fromJson(data);
  }
}
