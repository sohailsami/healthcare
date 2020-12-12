import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_health/ui/pages/LoginPage.dart';
import 'package:pro_health/ui/utilities/Constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screens extends StatefulWidget {
  static String tag = 'Screens';
  @override
  _ScreensState createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  final controller = PageController(
    initialPage: 3,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                width: 400,
                height: 550,
                child: PageView(
                  controller: controller,
                  children: [
                    AppointmentScreen(),
                    DrugsScreen(),
                    DoctorsScreen(),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: JumpingDotEffect(
                      spacing: 10.0,
                      paintStyle:  PaintingStyle.stroke,
                      strokeWidth:  1.5,
                      dotColor:  Colors.grey,
                      activeDotColor:  kBaseColor
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       // MyBox(kBackgroundColor, text: 'DOCTORS'),
        SizedBox(height: 25,),
        Container(
          width: 375.00,
          height: 341.00,
          decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('assets/doctors.png'),
                fit: BoxFit.fitHeight,
              )),
        ),
      ],
    );
  }
}

class DrugsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30,),
        Container(
          width: 375.00,
          height: 341.00,
          decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('assets/drugs.png'),
                fit: BoxFit.fitHeight,
              )),
        ),
      ],
    );
  }
}

class AppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20,),
        Container(
          width: 375.00,
          height: 341.00,
          decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('assets/appointment.png'),
                fit: BoxFit.fitHeight,
              )),
        ),
        SizedBox(height: 70,),
        Row(
          children: [
            InkWell(
              child: Container(
                width: 400,
                height: 48,
                decoration: BoxDecoration(
                    color: kBaseColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(32)),
                alignment: Alignment.center,
                child: Text("GET STARTED",
                  style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 20, fontWeight: FontWeight.w600, color: kBackgroundColor),),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.tag);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class MyBox extends StatelessWidget {
  final Color color;
  final double height;
  final String text;

  MyBox(this.color, {this.height, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        color: color,
        height: (height == null) ? 150 : height,
        child: (text == null)
            ? null
            : Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Poppins-Bold',
              color: kBaseColor,
            ),
          ),
        ),
      ),
    );
  }
}