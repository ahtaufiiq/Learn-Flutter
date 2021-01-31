import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TaskScreenUI());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Center(child: Text("Hello"))));
  }
}

class TaskScreenUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFB),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Task",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                "20 January",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.grey,
                    size: 16.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0),
                  ),
                  Text(
                    "Highlight",
                  )
                ],
              ),
              Card(
                margin: EdgeInsets.only(top: 16.0, left: 2.0, right: 2.0),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 24.0, bottom: 24.0, left: 16.0, right: 24.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.wb_sunny_outlined,
                          color: Color(0xFFFF9500),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(child: Text("Set Highlight Today")),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
