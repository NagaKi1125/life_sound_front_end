import 'package:flutter/material.dart';
import 'package:life_sound/router/app_route.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';
import '../../../ui/auth/register/register_account_page.dart';
import '../../../widget/already_have_an_account_acheck.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: ColorName.kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(Dimens.defaultMarginPaddingLarge),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Dimens.defaultMarginPaddingLarge),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: ColorName.kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.all(Dimens.defaultMarginPaddingLarge),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: Dimens.defaultMarginPaddingLarge),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                // context.goNamed(RouterName.home.name);
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: Dimens.defaultMarginPaddingLarge),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RegisterAccountPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
