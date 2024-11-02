import 'package:flutter/material.dart';
import 'package:flutter_application2/core/widgets/custom_app_bar.dart';
import 'package:flutter_application2/core/widgets/custom_grid_view.dart';
import 'package:flutter_application2/features/home/presentation/views/widgets/grid_vertical_item.dart';
import 'package:flutter_application2/features/wishlist/data/cubits/cubit/wish_list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../core/utils/app_styles.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({super.key});

  @override
  State<WishlistView> createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {
  @override
  void initState() {
    BlocProvider.of<WishListCubit>(context).loadFav();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          padding: 20,
          title: Text("Wishlist",
              style: AppStyles.styleRalewayBold17.copyWith(fontSize: 22)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Iconsax.add_outline))
          ]),
      body: BlocBuilder<WishListCubit, WishListState>(
        builder: (context, state) {
          if (state is WishListEmpty) {
            return const Center(
              child: Text(
                "No items in the wishlist",
                style: AppStyles.styleRalewayBold17,
              ),
            );
          } else if (state is WishListSuccess) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomGridView(
                itemCount: state.favorites.length,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (p0, index) {
                  return GridVerticalItem(
                    productModel: state.favorites[index],
                  );
                },
              ),
            );
          } else if (state is WishListFailure) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
