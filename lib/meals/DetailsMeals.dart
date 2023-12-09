import 'package:flutter/material.dart';
import 'package:responsi_124210006/api/api_source.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsMeals extends StatefulWidget {
  const DetailsMeals({Key? key, required this.categoriesMeals})
      : super(key: key);

  final categoriesMeals;

  @override
  State<DetailsMeals> createState() => _DetailsMealsState();
}

class _DetailsMealsState extends State<DetailsMeals> {
  late Future<List<dynamic>> detailMeals;

  @override
  void initState() {
    super.initState();
    detailMeals =
        ApiSource().getDetailMealById(widget.categoriesMeals['idMeal']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meal Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: FutureBuilder<List<dynamic>>(
            future: detailMeals,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final detailMeal = snapshot.data!.first;

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              child: Image.network(
                                detailMeal['strMealThumb'],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    detailMeal['strMeal'],
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Category: ${detailMeal['strCategory']}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Area: ${detailMeal['strArea']}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  //ingredients
                                  Text(
                                    'Ingredients:',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      if (detailMeal['strIngredient1'] != null)
                                        Text(
                                          '${detailMeal['strIngredient1']} - ${detailMeal['strMeasure1']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient2'] != null)
                                        Text(
                                          '${detailMeal['strIngredient2']} - ${detailMeal['strMeasure2']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient3'] != null)
                                        Text(
                                          '${detailMeal['strIngredient3']} - ${detailMeal['strMeasure3']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient4'] != null)
                                        Text(
                                          '${detailMeal['strIngredient4']} - ${detailMeal['strMeasure4']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient5'] != null)
                                        Text(
                                          '${detailMeal['strIngredient5']} - ${detailMeal['strMeasure5']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient6'] != null)
                                        Text(
                                          '${detailMeal['strIngredient6']} - ${detailMeal['strMeasure6']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient7'] != null)
                                        Text(
                                          '${detailMeal['strIngredient7']} - ${detailMeal['strMeasure7']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient8'] != null)
                                        Text(
                                          '${detailMeal['strIngredient8']} - ${detailMeal['strMeasure8']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient9'] != null)
                                        Text(
                                          '${detailMeal['strIngredient9']} - ${detailMeal['strMeasure9']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient10'] != null)
                                        Text(
                                          '${detailMeal['strIngredient10']} - ${detailMeal['strMeasure10']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient11'] != null)
                                        Text(
                                          '${detailMeal['strIngredient11']} - ${detailMeal['strMeasure11']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient12'] != null)
                                        Text(
                                          '${detailMeal['strIngredient12']} - ${detailMeal['strMeasure12']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient13'] != null)
                                        Text(
                                          '${detailMeal['strIngredient13']} - ${detailMeal['strMeasure13']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      if (detailMeal['strIngredient14'] != null)
                                        Text(
                                          '${detailMeal['strIngredient14']} - ${detailMeal['strMeasure14']}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'Instructions:',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    detailMeal['strInstructions'],
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'Video Tutorial:',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  //button watch double infinity
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      primary: Colors.red,
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      _launchInBrowser(
                                          detailMeal['strYoutube']);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.play_arrow),
                                        SizedBox(width: 10),
                                        Text(
                                          'Watch Video',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error'),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Failed to open link: $_url');
    }
  }
}
