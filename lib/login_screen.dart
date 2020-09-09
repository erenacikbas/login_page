import 'package:flutter/material.dart';
import 'package:login_page/components/widgets.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = "/login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              CustomButtonBar(textColor1: kAppThemeColor, textColor2: Colors.white,),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _controller,
                hintText: "E-posta",
                icon: Icon(Icons.email),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                controller: _controller,
                hintText: "Şifre",
                icon: Icon(Icons.lock),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right:6.0),
                child: Text(
                  "Şifremi Unuttum",
                  textAlign: TextAlign.right,
                  style: kSmallText,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomBottomButton(
                text: "Giriş Yap",
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


