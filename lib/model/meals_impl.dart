class MealsApiApp {
  final List<Meals>? meals;

  MealsApiApp({
    this.meals,
  });

  MealsApiApp.fromJson(Map<String, dynamic> json)
      : meals = (json['meals'] as List?)
            ?.map((dynamic e) => Meals.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'meals': meals?.map((e) => e.toJson()).toList()};
}

class Meals {
  final String? strMeal;
  final String? strMealThumb;
  final String? idMeal;

  Meals({
    this.strMeal,
    this.strMealThumb,
    this.idMeal,
  });

  Meals.fromJson(Map<String, dynamic> json)
      : strMeal = json['strMeal'] as String?,
        strMealThumb = json['strMealThumb'] as String?,
        idMeal = json['idMeal'] as String?;

  Map<String, dynamic> toJson() =>
      {'strMeal': strMeal, 'strMealThumb': strMealThumb, 'idMeal': idMeal};
}
