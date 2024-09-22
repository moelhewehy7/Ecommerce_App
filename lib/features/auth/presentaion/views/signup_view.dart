import 'package:flutter/material.dart';
import 'package:flutter_application2/core/utils/app_styles.dart';

import 'package:flutter_application2/features/auth/presentaion/views/widgets/login_footer.dart';
import 'package:flutter_application2/features/auth/presentaion/views/widgets/signup_form_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's create your account",
                  style: AppStyles.styleRalewayBold28),
              SizedBox(
                height: 32,
              ),
              SignUpFormWidget(),
              SizedBox(
                height: 32,
              ),
              LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
