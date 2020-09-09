import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/login_screen.dart';
import 'package:login_page/register_screen.dart';

// Logo

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("images/cineprize_ logo.png"),
    );
  }
}

// Custom Page Buttons

class PageButtons extends StatelessWidget {
  final text;
  final Color textColor;
  final Function onPressed;
  const PageButtons({
    Key key,
    this.text,
    this.textColor,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,child: Text(text,style: TextStyle(color: textColor,fontSize: 23)),);
  }
}

class CustomButtonBar extends StatelessWidget {
  final Color textColor1;
  final Color textColor2;
  const CustomButtonBar({
    Key key,
    this.textColor1,
    this.textColor2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceAround,
      children: [
        PageButtons(text: "Giriş Yap",textColor: textColor1, onPressed: (){Navigator.pushNamed(context, LoginScreen.id);},),
        PageButtons(text: "Üye Ol",textColor: textColor2, onPressed: (){Navigator.pushNamed(context, RegisterScreen.id);},)
    ],);
  }
}

//Custom Text Field

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  const CustomTextField({
    Key key,
    this.hintText,
    this.icon,
    @required TextEditingController controller,
  }) : _controller = controller, super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          icon,
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextField(
                //Yukarıda TextField için tanımladığım fonksiyonu kullandım
                controller: _controller,
                style: kNormalText,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  counterStyle: TextStyle(color: Colors.white),
                  hintText: hintText,
                  hintStyle: kHintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





class CustomBottomButton extends StatelessWidget {
  final String text;
  final Function ontap;
  const CustomBottomButton({
    Key key,
    this.text,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xff3fd490),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(text,textAlign: TextAlign.center,style: kNormalText,),
          ),
          width: double.infinity),
    );
  }
}


