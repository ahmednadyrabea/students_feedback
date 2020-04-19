import 'package:flutter/material.dart';
import 'package:studentsfeedback/main_feedback.dart';

class My extends StatelessWidget {
  My({this.security, this.dss});
  bool dss = true;
  bool security = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Registserd Courses',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 550,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: subjectBox(
                          isactivated: true,
                          label: 'Dss',
                          nav: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Quizzler()));
                          }),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: subjectBox(
                          isactivated: true,
                          label: 'Security',
                          nav: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Quizzler()));
                          }),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: subjectBox(
                        isactivated: true,
                        label: 'MultiMedia',
                        nav: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Quizzler()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: subjectBox(
                          isactivated: true,
                          label: 'DataBase',
                          nav: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Quizzler()));
                          }),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: subjectBox(
                          isactivated: true,
                          label: 'Marketing',
                          nav: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Quizzler()));
                          }),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: subjectBox(
                          isactivated: true,
                          label: 'Compilers',
                          nav: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Quizzler()));
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class subjectBox extends StatelessWidget {
  subjectBox(
      {@required this.label, @required this.nav, @required this.isactivated});
  final bool isactivated;
  final String label;
  final Function nav;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 100,
      child: RaisedButton(
        onPressed: (isactivated == true) ? nav : null,
        child: Text(label),
        color: Colors.blue[600],
        textColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
