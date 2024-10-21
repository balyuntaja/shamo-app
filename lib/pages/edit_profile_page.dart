import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor3,
      appBar: header(context),
      body: content(),
    );
  }

  AppBar header(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.close,
          color: primaryTextColor,
        ),
      ),
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Edit Profile',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.check,
            color: primaryColor,
            weight: 20,
          ),
        ),
      ],
    );
  }

  Widget content() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: defaultMargin),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/salsa.jpg',
                ),
              ),
            ),
          ),
          nameInput(),
          usernameInput(),
          emailInput(),
        ],
      ),
    );
  }

  Widget nameInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle.copyWith(
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: 'Salsa Gemintang Kejora',
              hintStyle: primaryTextStyle.copyWith(
                fontSize: 16,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget usernameInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle.copyWith(
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: '@salsagemintang_',
              hintStyle: primaryTextStyle.copyWith(
                fontSize: 16,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle.copyWith(
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: 'salsa.gemintang@gmail.com',
              hintStyle: primaryTextStyle.copyWith(
                fontSize: 16,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
