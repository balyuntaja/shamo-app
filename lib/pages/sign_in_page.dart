import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              _emailInput(),
              _passwordInput(),
              _signInButton(context),
              const Spacer(),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _header() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Login',
        style: primaryTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 24,
        ),
      ),
      const SizedBox(height: 2),
      Text(
        'Sign In to Continue',
        style: subtitleTextStyle,
      ),
    ],
  );
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Address',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Row(
              children: [
                Image.asset(
                  'assets/icon/ic_email.png',
                  width: 18,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: subtitleTextStyle),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Row(
              children: [
                Image.asset(
                  'assets/icon/ic_password.png',
                  width: 18,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: subtitleTextStyle),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _signInButton(BuildContext context) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: const EdgeInsets.only(top: 30),
    child: TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
      style: TextButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        'Sign In',
        style: primaryTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 16,
        ),
      ),
    ),
  );
}

Widget footer(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Don\'t have an account?',
        style: subtitleTextStyle.copyWith(
          fontSize: 12,
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-up');
        },
        child: Text(
          ' Sign Up',
          style: purpleTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 12,
          ),
        ),
      ),
    ],
  );
}
