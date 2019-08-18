import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Clock',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AppClock(),
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        width: double.infinity,
        child: DefaultTabController(
          //For 3 Tabs
          length: 3,
          child: Scaffold(
            bottomNavigationBar: ButtomBar(),
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(55),
                child: Container(
                  color: Colors.transparent,
                  child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  color: Color(0xffff0863), width: 4.0),
                              insets: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0)),
                          indicatorWeight: 15,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Color(0xff2d386b),
                          labelStyle: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                          unselectedLabelColor: Colors.black26,
                          tabs: <Widget>[
                            Tab(
                              text: "ALARMS",
                              icon: Icon(Icons.watch_later, size: 40),
                            ),
                            Tab(
                              text: "RECORDS",
                              icon: Icon(Icons.menu, size: 40),
                            ),
                            Tab(
                              text: "PROFILE",
                              icon:
                                  Icon(Icons.supervised_user_circle, size: 40),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: FirstTab(),
                ),
                Center(
                  child: SecondTab(),
                ),
                Center(
                  child: Text("Profile Tab")
                  ),
              ],
            ),
          ),
        ));
  }
}

class ButtomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text(
              "Edit Alarms",
              style: TextStyle(letterSpacing: 1.5),
            ),
            color: Color(0xffff5e92),
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          FloatingActionButton(
            child: Text(
              "+",
              style: TextStyle(
                  color: Color(0xff253165),
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
            onPressed: (){},
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5,
            highlightElevation: 3,
          )
        ],
      ),
    );
  }
}
