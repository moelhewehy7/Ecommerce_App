import 'package:flutter_application2/core/models/product_model.dart';
import 'package:flutter_application2/core/utils/app_consts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'wish_list_state.dart';

class WishListCubit extends Cubit<WishListState> {
  WishListCubit() : super(WishListInitial());
  var favoritesBox = Hive.box<ProductModel>(AppConsts.kFaovrites);
  Future<List<ProductModel>> loadFav() async {
    emit(WishListLoading());

    List<ProductModel> faovritesList = favoritesBox.values.toList();
    if (faovritesList.isEmpty) {
      emit(WishListEmpty());
    } else {
      emit(WishListSuccess(favorites: favoritesBox.values.toList()));
    }

    return faovritesList;
  }

  Future<void> toggleFavorite(ProductModel productt) async {
    // Check if the product is already in the favorites box
    final existingProductIndex = favoritesBox.values
        .toList()
        .indexWhere((product) => product.id == productt.id);
//indexWhere helps find the index of the product with the matching id.
//If no element satisfies the condition, it returns -1.

    if (existingProductIndex != -1) {
      // If the product exists in favorites, delete it using its index
      await favoritesBox.deleteAt(existingProductIndex);
    } else {
      // If the product is not in favorites, add it
      await favoritesBox.add(productt);
    }

    // Emit the updated list of favorites
    emit(WishListSuccess(favorites: favoritesBox.values.toList()));
  }
}
