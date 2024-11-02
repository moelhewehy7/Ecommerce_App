import 'package:flutter/material.dart';
import 'package:flutter_application2/core/models/product_model.dart';
import 'package:flutter_application2/core/utils/app_consts.dart';
import 'package:flutter_application2/features/wishlist/data/cubits/cubit/wish_list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/bottom_navigation_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<ProductModel>(ProductModelAdapter());

  await Hive.openBox<ProductModel>(AppConsts.kFaovrites);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WishListCubit()..loadFav(),
      child: MaterialApp(
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              onTertiary: Colors.blue,
              onSecondary: Colors.black,
              secondary: Colors.white,
              seedColor: Colors.blue,
              brightness: Brightness.dark),
        ),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              surfaceBright: Colors.white,
              secondary: const Color(0xFF000000),
              primary: const Color(0xFF004cff),
              seedColor: Colors.blue,
              onTertiary: Colors.blue),
        ),
        home: const BottomNavigationBarMenu(),
      ),
    );
  }
}
