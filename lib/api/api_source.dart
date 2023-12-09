import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiSource {
  static const categoriesApi =
      'https://www.themealdb.com/api/json/v1/1/categories.php';

  static const mealsApi =
      'https://www.themealdb.com/api/json/v1/1/filter.php?c=';

  static const detailMealApi =
      'https://www.themealdb.com/api/json/v1/1/lookup.php?i=';

  Future<List<dynamic>> getCategories() async {
    final response = await http.get(Uri.parse(categoriesApi));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json['categories'];
    } else {
      throw Exception('Failed to load meals categories');
    }
  }

  Future<List<dynamic>> getMealsByCategory(String category) async {
    final response = await http.get(Uri.parse('$mealsApi$category'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json['meals'];
    } else {
      throw Exception('Failed to load meals');
    }
  }

  Future<List<dynamic>> getDetailMealById(String id) async {
    final response = await http.get(Uri.parse('$detailMealApi$id'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print('Detail Meals API Response: $json');
      return json['meals'];
    } else {
      throw Exception('Failed to load detail meals');
    }
  }
}
