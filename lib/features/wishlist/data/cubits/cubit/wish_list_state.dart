part of 'wish_list_cubit.dart';

@immutable
sealed class WishListState {}

final class WishListInitial extends WishListState {}

final class WishListLoading extends WishListState {}

final class WishListEmpty extends WishListState {}

final class WishListSuccess extends WishListState {
  final List<ProductModel> favorites;

  WishListSuccess({required this.favorites});
}

final class WishListFailure extends WishListState {
  final String message;

  WishListFailure({required this.message});
}
