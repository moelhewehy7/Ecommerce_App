import 'package:flutter/material.dart';
import 'package:flutter_application2/core/models/product_model.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/core/widgets/product_detail/product_detail.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_vertical_item.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({
    super.key,
  });

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  List<ProductModel> products = [
    ProductModel(
      id: "1",
      title: "Product 1",
      price: 100,
      description: "Description of Product 1",
      brand: "Nike",
      discount: "26%",
      imageUrl: "assets/images/NikeAirJOrdonBlackRed.png",
    ),
    ProductModel(
      id: "2",
      title: "Product 2",
      price: 150,
      description: "Description of Product 2",
      brand: "Adidas",
      discount: "15%",
      imageUrl: "assets/images/NikeAirJOrdonOrange.png",
    ),
    ProductModel(
      id: "3",
      title: "Product 3",
      price: 200,
      description: "Description of Product 3",
      brand: "Puma",
      discount: "10%",
      imageUrl: "assets/images/NikeAirJordonSingleBlue.png",
    ),
    ProductModel(
      id: "4",
      title: "Product 4",
      price: 120,
      description: "Description of Product 4",
      brand: "Reebok",
      discount: "20%",
      imageUrl: "assets/images/NikeAirJordonSingleOrange.png",
    ),
    ProductModel(
      id: "5",
      title: "Product 5",
      price: 80,
      description: "Description of Product 5",
      brand: "Under Armour",
      discount: "5%",
      imageUrl: "assets/images/NikeAirJordonwhiteMagenta.png",
    ),
    ProductModel(
      id: "6",
      title: "Product 6",
      price: 90,
      description: "Description of Product 6",
      brand: "Asics",
      discount: "30%",
      imageUrl: "assets/images/NikeAirJOrdonWhiteRed.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomGridView(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProductDetail()));
            },
            child: GridVerticalItem(
              productModel: products[index],
            ));
      },
    );
  }
}
