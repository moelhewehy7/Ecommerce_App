import 'package:flutter/material.dart';
import 'widgets/login_footer.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const LoginHeader(),
                const SizedBox(
                  height: 24,
                ),
                const LoginFormWidget(),
                const SizedBox(
                  height: 32,
                ),
                const LoginFooter(),
              ],
            ),
          ),
        ));
  }
}
