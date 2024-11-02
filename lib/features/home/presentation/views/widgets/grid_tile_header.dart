import 'package:flutter/material.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/discount_badge.dart';
import 'package:flutter_application2/features/wishlist/data/cubits/cubit/wish_list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../core/models/product_model.dart';

class GridTileHeader extends StatelessWidget {
  const GridTileHeader({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishListCubit, WishListState>(
      builder: (context, state) {
        bool isFavorite = false;

        if (state is WishListSuccess) {
          // Check if the product is in the favorites list
          isFavorite =
              state.favorites.any((product) => product.id == productModel.id);
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DiscountBadge(
              discount: productModel.discount,
            ),
            IconButton(
              onPressed: () {
                BlocProvider.of<WishListCubit>(context)
                    .toggleFavorite(productModel);
                BlocProvider.of<WishListCubit>(context).loadFav();
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
            ),
          ],
        );
      },
    );
  }
}
