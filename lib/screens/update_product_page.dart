import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String? name, discription, image, price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Update Product'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  hintText: 'Product Name',
                  onChanged: (data) {
                    name = data;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Discription',
                  onChanged: (data) {
                    discription = data;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  keyboardType: TextInputType.number,
                  hintText: 'Price',
                  onChanged: (data) {
                    price = data;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Image',
                  onChanged: (data) {
                    image = data;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  txt: 'UPDATE',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                      print('Success');
                    } catch (e) {
                      print(e);
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: name == null ? product.title : name!,
      price: price == null ? product.price : price!,
      description: discription == null ? product.description : discription!,
      image: image == null ? product.image : image!,
      category: product.category,
      // rating: product.rating == null ? null : null,
    );
  }
}
