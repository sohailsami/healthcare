import 'package:flutter/material.dart';


class News extends StatelessWidget {
  static String tag = 'News';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Total Number of Enquiries from X centres',
                         ),
                      Text(
                        '546',
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Website Enquiries',),
                      Text(
                        '10',
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Phone Enquiries',),
                      Text(
                        '15',
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Walk-in Enquiries', ),
                      Text(
                        '6',
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Email Enquiries',),
                      Text(
                        '15',
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Other Enquiries',),
                      Text(
                        '115',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(height: 200, child:
          Card(

              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text('History of Enquiries'),
                      Text('History of Enquiries'),

                      Expanded(child: Text('Hello World!')),
                    ],
                  ))),),
        ],
      ),
    );
  }
}