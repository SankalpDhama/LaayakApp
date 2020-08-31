import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:timetable/screens/addLecture.dart';
import 'package:timetable/widgets/widgets.dart';

class AddDataPage extends StatefulWidget {
  AddDataPage({this.code});

  final String code;

  @override
  _AddDataPageState createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          headingText('Add Notification'),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: EdgeInsets.all(0),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 0.4),
                  blurRadius: 3,
                  color: Colors.grey.shade300,
                )
              ],
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AddLecturePage(code: widget.code)));
              },
              child: Column(children: <Widget>[
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.edit, color: Colors.green, size: 30),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        height: 45,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Text('Lecture',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                          ])),
                    ]),
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: EdgeInsets.all(0),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 0.4),
                  blurRadius: 3,
                  color: Colors.grey.shade300,
                )
              ],
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AddAnnoun(code: widget.code),
                );
              },
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.speaker_notes,
                            color: Colors.green, size: 30),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        height: 45,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Announcement',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: EdgeInsets.all(0),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 0.4),
                  blurRadius: 3,
                  color: Colors.grey.shade300,
                )
              ],
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AddLink(code: widget.code),
                );
              },
              child: Column(children: <Widget>[
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.link, color: Colors.green, size: 30),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        height: 45,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Text('Link',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                          ])),
                    ]),
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: EdgeInsets.all(0),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 0.4),
                  blurRadius: 3,
                  color: Colors.grey.shade300,
                )
              ],
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AddPoll(code: widget.code),
                );
              },
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.poll,
                            color: Colors.green, size: 30),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        height: 45,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 25,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Poll',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}