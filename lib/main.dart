import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:isp/network/api_service.dart';

import 'package:isp/widget/firmware.dart';
import 'package:provider/provider.dart';

import 'widget/content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(
            builder: (_) => ApiService.create(),
            dispose: (_, ApiService service) => service.dispose(),
          )
        ],

   child: MaterialApp(
      title: 'M Service',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,
          primaryTextTheme: TextTheme(
              title: TextStyle(
                  color: Colors.white
              )
          )
      ),
      home: MyHomePage(title: 'M Service'),
   ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  GlobalKey bottomNavigationKey = GlobalKey();


  final List<Widget> _children = [
    ContentPage(title: "Home Page"),
    FirmwarePage(title: "Firmware Page"),
    ContentPage(title: "Messages Page"),
    ContentPage(title: "Profile Page")
  ];

  @override
  Widget build(BuildContext context) {


    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(


      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: _children[_currentIndex],
      key: bottomNavigationKey,
      bottomNavigationBar: FancyBottomNavigation(

        tabs: [
          TabData(iconData: Icons.book, title: "Tutorial"),
          TabData(iconData: Icons.build, title: "Firmware"),
          TabData(iconData: Icons.adb, title: "iSP"),
          TabData(iconData: Icons.android, title: "Test Point")
        ],
        onTabChangedListener: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },

      ),
    );
  }
}
