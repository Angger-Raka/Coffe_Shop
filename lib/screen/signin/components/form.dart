import 'package:coffe_shope/helper/custom_button.dart';
import 'package:coffe_shope/screen/home/home_screen.dart';
import 'package:coffe_shope/screen/signup/signup_screen.dart';
import 'package:coffe_shope/theme.dart';
import 'package:flutter/material.dart';

class FormSignIn extends StatelessWidget {
  FormSignIn({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          Text(
            "Password",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeNamed);
            },
            text: "Sign In",
            backgroundColor: primaryColorButton,
          ),
          const SizedBox(height: 10),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, SignUpScreen.routeNamed);
            },
            text: "Create new Account",
            backgroundColor: secondaryColorButton,
          ),
        ],
      ),
    );
  }
}
