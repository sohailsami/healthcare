import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(7.0),

        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            kBackgroundColor,
            kBackgroundColor,
          ]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Hey there,\n'
                        'Today will let you choose your specialty and then customize the type of information accordingly.',
                      style: TextStyle(fontFamily: 'Poppins-Medium', fontSize: 17.0, color: kBaseColor, letterSpacing: 0.2),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  width: 198,
                  height: 132,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: kBaseColor,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.badge, color: Colors.white, size: 70),
                          title: Text('Patient', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                          //subtitle: Text('Patient', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                        ),
                        // ignore: deprecated_member_use
                        ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Total Patient: 400', style: TextStyle(fontFamily: 'Poppins-Bold',color: Colors.white)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 199,
                  height: 132,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: kBaseColor,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.widgets_outlined, color: Colors.white, size: 68),
                          title: Text('Prescribe', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                          //subtitle: Text('TWICE', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                        ),
                        // ignore: deprecated_member_use
                        ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Total Prescribe: 400', style: TextStyle(fontFamily: 'Poppins-Bold',color: Colors.white)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 198,
                  height: 132,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: kBaseColor,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.add_moderator, color: Colors.white, size: 70),
                          title: Text('Patient', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                          subtitle: Text('TWICE', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                        ),
                        /*ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Edit', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                              FlatButton(
                                child: const Text('Delete', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 198,
                  height: 132,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: kBaseColor,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.add_to_photos, color: Colors.white, size: 70),
                          title: Text('Patient', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                          subtitle: Text('TWICE', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                        ),
                        /*ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Edit', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                              FlatButton(
                                child: const Text('Delete', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 198,
                  height: 132,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: kBaseColor,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.account_balance_wallet, color: Colors.white, size: 70),
                          title: Text('Patient', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                          subtitle: Text('TWICE', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                        ),
                        /*ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Edit', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                              FlatButton(
                                child: const Text('Delete', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 198,
                  height: 132,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: kBaseColor,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.ac_unit_rounded, color: Colors.white, size: 70),
                          title: Text('Patient', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                          subtitle: Text('TWICE', style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white)),
                        ),
                        /*ButtonTheme.bar(
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Edit', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                              FlatButton(
                                child: const Text('Delete', style: TextStyle(color: kBaseColor)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}