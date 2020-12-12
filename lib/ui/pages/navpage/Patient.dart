import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

class Patient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: new ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return Container(
            height: 130,
            child: Card(
//                color: Colors.blue,
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            image: DecorationImage(
                                image: AssetImage('assets/apatient.png'),
                                fit: BoxFit.cover),
                            borderRadius:
                            BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext conext) {
                          return AlertDialog(
                            title: Text('Not in stock'),
                            content:
                            const Text('This item is no longer available'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Ok'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: Chip(
                          label: Text('@Patient'),
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.green,
                          elevation: 10,
                          autofocus: true,
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}