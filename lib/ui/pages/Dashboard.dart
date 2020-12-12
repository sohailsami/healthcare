import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

import 'navpage/Home.dart';
import 'navpage/Patient.dart';
import 'navpage/News.dart';
import 'navpage/Appointment.dart';
import 'navpage/DoctorsInfo.dart';
//import 'navpage/Home.dart';
//import 'package:pro_health/ui/utilities/HomeDrawer.dart';
//import 'package:pro_health/ui/utilities/HomeDrawer.dart';

const String _AccountName = 'Super Admin';
const String _AccountEmail = 'superadmin@prohealth.com';
const String _AccountAbbr = 'assets/adoctor.png';

class Dashboard extends StatefulWidget {
  static String tag = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  List<Widget> listWidgets = [Home(), Patient(), News(), Appointment(), DoctorsInfo()];

  @override
  Widget build(BuildContext context) {

    _onTapOtherAccounts(BuildContext context) {
      Navigator.of(context).pop();
      showDialog<Null>(
        context: context,
        child: new AlertDialog(
          title: const Text('Account switching not implemented.'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }

    var drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
              color: kBaseColor,
              ),
              accountName: const Text(_AccountName, style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 15),),
              accountEmail: const Text(_AccountEmail, style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 12),),
              currentAccountPicture: new CircleAvatar(
                  backgroundColor: kBackgroundColor,
                  radius: 48.0,
                  child: Image.asset('assets/apatient.png'),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => _onTapOtherAccounts(context),
                  child: new Semantics(
                    label: 'Switch Account',
                    child: new CircleAvatar(
                      backgroundColor: Colors.brown,
                      child: new Text('User', style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 15),),
                    ),
                  ),
                )
              ]
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: kBackgroundColor,
            child: Column(children: <Widget>[
              ListTile(
                dense: true,
                title: Text("Home", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.home, size: 28, color: kBaseColor,),
                onTap: (){Navigator.pushNamed(context, "home");},
              ),
              ListTile(
                dense: true,
                title: Text("Patients", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.wheelchair_pickup, size: 28, color: kBaseColor),
                onTap: (){},
              ),
              ListTile(
                dense: true,
                title: Text("News", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.speaker_notes, size: 28, color: kBaseColor),
                onTap: (){
                  Navigator.pushNamed(context, "/news");
                },
              ),

              ListTile(
                dense: true,
                title: Text("Appointments", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.domain_verification, size: 28, color: kBaseColor),
                onTap: (){
                  Navigator.pushNamed(context, "/appointment");
                },
              ),
              ListTile(
                dense: true,
                title: Text("Settings", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.settings, size: 28, color: kBaseColor),
                onTap: (){
                  Navigator.pushNamed(context, "/settings");
                },
              ),
              ListTile(
                dense: true,
                title: Text("Profile", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.person, size: 28, color: kBaseColor),
                onTap: (){
                  Navigator.pushNamed(context, "/profile");
                },
              ),
              ListTile(
                dense: true,
                title: Text("Sign Out", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.logout, size: 28, color: kBaseColor),
                onTap: (){
                  Navigator.pushNamed(context, "/logout");
                },
              ),
              Divider(height: 2, thickness: 1, color: kBaseColor ),
              ListTile(
                dense: true,
                title: Text("Reviews", style: TextStyle(color: kBaseColor, fontFamily: 'Poppins-Bold', fontSize: 16),),
                leading: Icon(Icons.star_half, size: 28, color: kBaseColor,),
                onTap: (){
                  Navigator.pushNamed(context, "/reviews");
                },
              ),
            ],),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pro Health'),
        elevation: 5,
        backgroundColor: kBaseColor,

        actions: <Widget>[
          IconBadge(
            icon: Icon(Icons.notifications_none),
            itemCount: 50,
            badgeColor: Colors.red,
            itemColor: Colors.white,
            maxCount: 49,
            hideZero: true,
            onTap: () {},
          ),
        ],
      ),
      drawer: drawer,
      body: listWidgets[selectedIndex],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: kBaseColor,
          color: Colors.white,
          items: [
            TabItem(icon: Icons.home_rounded, title: 'Home'),
            TabItem(icon: Icons.wheelchair_pickup, title: 'Patient'),
            TabItem(icon: Icons.speaker_notes, title: 'News'),
            TabItem(icon: Icons.add_to_photos, title: 'Appointment'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          initialActiveIndex: selectedIndex,
          onTap: onItemTapped,
        )
    );
  }
  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}