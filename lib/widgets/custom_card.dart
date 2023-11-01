import 'package:flutter/material.dart';
import 'package:store_app/constants/app_routes.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.updateProductPage,
            arguments: productModel);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            // height: 150,
            // width: 220,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(10, 10),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Card(
              color: Colors.white,
              elevation: 0.3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productModel.title.substring(0, 15),
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$ ${productModel.price.toString()}'),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -50,
            right: 30,
            child: Image.network(
              productModel.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
