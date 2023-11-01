import 'package:store_app/helpers/api.dart';

class GetAllCategoriesService {
  Future<List<String>> getAllCategories() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );

    List<String> categoriesList = [];
    for (int i = 0; i < data.length; i++) {
      categoriesList.add(data[i]);
    }
    return categoriesList;
  }
}
