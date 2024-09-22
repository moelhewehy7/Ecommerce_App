import 'package:flutter/material.dart';
import 'widgets/login_footer.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const LoginHeader(),
            const SizedBox(
              height: 17,
            ),
            const FormWidget(),
            const SizedBox(
              height: 30,
            ),
            const Footer(),
          ],
        ),
      ),
    ));
  }
}
