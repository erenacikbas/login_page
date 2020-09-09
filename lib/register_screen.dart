import 'package:flutter/material.dart';
import 'package:login_page/components/widgets.dart';
import 'package:login_page/constants.dart';

class RegisterScreen extends StatefulWidget {
  static String id = "register_screen";
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool checkBoxState = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              CustomButtonBar(textColor1: Colors.white,textColor2: kAppThemeColor,),
              CustomTextField(
                controller: _controller,
                hintText: "Kullanıcı Adı",
                icon: Icon(Icons.verified_user),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                  controller: _controller,
                  hintText: "E-Posta",
                  icon: Icon(Icons.email)),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                  controller: _controller,
                  hintText: "Şifre",
                  icon: Icon(Icons.lock)),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                  controller: _controller,
                  hintText: "Şifre Tekrar",
                  icon: Icon(Icons.lock)),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xff3fd490),
                    checkColor: Colors.white,
                    focusColor: Colors.white,
                      value: checkBoxState,
                      onChanged: (bool value) {
                        print(value);
                        setState(() {
                          checkBoxState = value;
                        });
                      }),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Üyelik Sözleşmesi",
                          style: TextStyle(color: kAppThemeColor)),
                      TextSpan(text: "'ni okudum, onaylıyorum.")
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CustomBottomButton(
                text: "Üye Ol",
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
