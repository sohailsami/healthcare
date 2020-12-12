import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
//import 'package:pro_health/ui/pages/Dashboard.dart';
//import 'package:pro_health/ui/widgets/SocialIcons.dart';
//import 'package:pro_health/ui/utilities/CustomIcons.dart';
//import 'Dashboard.dart';
import 'package:pro_health/ui/utilities/Constant.dart';
import 'package:pro_health/ui/pages/OtpScreen.dart';
//import 'package:pro_health/ui/utilities/CustomIcons.dart';

const BaseColor = Color(0xff10218B);

class LoginPage extends StatefulWidget {
  static String tag = 'loginPage';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final logoTitle = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 20.0),
      child: Text(
        'TO USE THIS APP YOU NEED TO SIGN IN FIRST!', textAlign: TextAlign.center,
        style: TextStyle(fontFamily:'Poppins-Bold', fontSize: 16.0, color: kBaseColor),
      ),
    );

    final mobile = TextFormField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)],
      keyboardType: TextInputType.number,
      validator: numberValidator,
      autofocus: false,
      initialValue: '',
      style: TextStyle(fontFamily:"Poppins-Medium", fontSize: 18, color: Colors.black),
      decoration: InputDecoration(
        hintText: 'Enter your mobile number',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        prefixIcon: Icon(Icons.phonelink_lock_rounded),
      ),
    );

    // final password = TextFormField(
    //   autofocus: false,
    //   initialValue: 'some password',
    //   obscureText: true,
    //   decoration: InputDecoration(
    //     hintText: 'Password',
    //     contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    //   ),
    // );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(OtpScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: kBaseColor,
        child: Text('Sign In', style: TextStyle(fontFamily: "Poppins-Bold", fontSize: 18, color: Colors.white)),
      ),
    );

    /*final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        textAlign: TextAlign.right,
      ),
      onPressed: () {},
    );*/

    /*final SignInWithFB = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Dashboard.tag);
        },
        padding: EdgeInsets.all(12),
        color: const Color(0xff104090),
        child: Text('SIGN IN with Facebook', style: TextStyle(fontFamily: "Poppins-Bold", fontSize: 18, color: Colors.white,)),
      ),
    );*/

    /*final SocialLogin = FlatButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //horizontalLine(),
          Text("Social Login",
              style: TextStyle(
                  fontSize: 16.0, fontFamily: "Poppins-Medium", color: Colors.black87)),
          //horizontalLine(),
        ],
      ),
    );*/

    /*final SignUp = FlatButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Dont\'t have an account? ",
            style: TextStyle(color: Colors.black, fontSize: 17, fontFamily: "Poppins-Regular"),
          ),
          InkWell(
            onTap: () {},
            child: Text("Sign Up",
                style: TextStyle(
                    color: kBaseColor,
                    fontFamily: "Poppins-Bold",
                    fontSize: 18,
                )),
          )
        ],
      )
    );*/

    return Scaffold(
      backgroundColor: const Color(0xfff7f5f2),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 0.0),
            logoTitle,
            SizedBox(height: 30.0),
            mobile,
            SizedBox(height: 8.0),
            // password,
            // SizedBox(height: 24.0),
            loginButton,
            //forgotLabel,
            //SignInWithFB,
            //SocialLogin,
            //SignUp
          ],
        ),
      ),
    );
  }
}

String numberValidator(String value) {
  if(value == null) {
    return null;
  }
  final n = num.tryParse(value);
  if(n == null) {
    return '"$value" is not a valid number!';
  }
  return null;
}