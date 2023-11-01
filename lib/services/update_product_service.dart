import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
    // required RatingModel? rating,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
        // 'rating': rating
      },
    );

    return ProductModel.fromJson(data);
  }
}
