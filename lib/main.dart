import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TaskScreen2());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Center(child: Text("Hello"))));
  }
}

class TaskScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFB),
      body: SafeArea(
        child: Column( // Menyusun widget yang didalam secara vertikal
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[ // widget didalam sini terususun dari atas ke bawah
            Text( // Text Widget
              "Task",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text( // Text Widget
              "20 January",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Row( // untuk menyusun Icon dan Text secara horizonal 
              children: <Widget>[ // widget didalam sini terususun dari kiri ke kanan
                Icon(
                  Icons.wb_sunny_outlined,
                  color: Colors.grey,
                ),
                Text(
                  "Highlight",
                )
              ],
            ),
            Card(
              child: Row( // untuk menyusun Icon dan Text Bersebelahan 
                children: [
                  Icon(
                    Icons.wb_sunny_outlined,
                    color: Color(0xFFFF9500),
                  ),
                  Text("Set Highlight Today"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TaskScreen2 extends StatelessWidget {
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
                height: 24,
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
                  ),
                  Text(
                    "Highlight",
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.wb_sunny_outlined,
                        color: Color(0xFFFF9500),
                      ),
                      Text("Set Highlight Today"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TaskScreenUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // untuk menambahkan margin yang sama di semua sisinya
            margin: EdgeInsets.all(24),
            // jika ukurannya berbeda gunakan EdgeInsets.only
            // margin: EdgeInsets.only(left: 24,right: 24,top: 20)
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
      ),
    );
  }
}

class TaskScreenFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFB),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 60.0,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 24.0, top: 28.0),
                        child: Text(
                          "Task",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 16.0, left: 24.0, right: 24.0),
                        child: Text(
                          "20 January",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 24.0, right: 24.0),
                            child: Row(
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
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 24.0, right: 24.0),
                              child: Card(
                                elevation: 4,
                                margin: EdgeInsets.only(
                                    top: 16.0, left: 2.0, right: 2.0),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 24.0,
                                        bottom: 24.0,
                                        left: 16.0,
                                        right: 24.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.wb_sunny_outlined,
                                          color: Color(0xFFFF9500),
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                            child: Text("Set Highlight Today")),
                                      ],
                                    )),
                              )),
                        ],
                      ),
                      Divider(
                        color: Color(0xFFE5E5E5),
                        thickness: 1,
                        height: 56.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.all(24),
                  child: Icon(Icons.menu),
                ),
                left: 0,
                bottom: 0),
            Positioned(
                child: Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(24),
                    child: Icon(Icons.person)),
                right: 0,
                bottom: 0),
            Positioned(
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(0.12),
                      blurRadius: 6,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.add),
              ),
              bottom: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
