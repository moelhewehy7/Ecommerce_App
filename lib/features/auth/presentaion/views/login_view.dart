// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';
import 'package:flutter_application2/core/utils/assets.dart';
import 'package:flutter_application2/core/widgets/custom_buttons.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Image.asset(height: 70, AssetsData.logo),
          SizedBox(
            height: 8,
          ),
          Text(
            "Login",
            style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff202020),
              height: 61 / 52,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Good to see you back!",
            style: const TextStyle(
              fontFamily: "Nunito Sans",
              fontSize: 19,
              fontWeight: FontWeight.w300,
              color: Color(0xff202020),
              height: 35 / 19,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 17,
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xfff8f8f8),
                  hintText: "Email",
                  hintStyle: AppStyles.stylePoppinsMedium14,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xfff8f8f8),
                  hintText: "Password",
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Iconsax.eye_slash_outline)),
                  hintStyle: AppStyles.stylePoppinsMedium14,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      value: true,
                      onChanged: (value) {}),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Remember me",
                      style: AppStyles.stylePoppinsMedium14
                          .copyWith(color: Color(0xff202020))),
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text("Forgot password?"))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomFilledButton(text: "Login"),
              SizedBox(
                height: 12,
              ),
              CustomOutLinedButton(text: "Create account"),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Or Sign in With',
                      style: AppStyles.stylePoppinsMedium14.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color.fromARGB(142, 32, 32, 32)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBrandButton(
                    brand: Brands.google,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomBrandButton(
                    brand: Brands.facebook_circled,
                  ),
                ],
              )
            ],
          )),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    ));
  }
}

class CustomBrandButton extends StatelessWidget {
  const CustomBrandButton({
    super.key,
    required this.brand,
  });
  final String brand;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
          shape: CircleBorder(side: BorderSide(color: Colors.grey))),
      onPressed: () {},
      icon: Brand(
        brand,
        size: 20,
      ),
    );
  }
}
