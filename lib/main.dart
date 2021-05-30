import 'package:flutter/material.dart';
import 'package:travel_recommendation_ui/home.dart';
import 'package:flutter/services.dart';
import 'package:travel_recommendation_ui/myTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(bodyColor: MyTheme.textColor, displayColor: MyTheme.textColor),
        fontFamily: "Quicksand",
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List screens = [HomeScreen(), Container(), Container(), Container()];
  @override
  Widget build(BuildContext context) {
    print("Hello");
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        screens[_currentIndex],
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: BottomNavigationBar(
                elevation: 10,
                type: BottomNavigationBarType.fixed,
                iconSize: 26,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: _currentIndex,
                unselectedIconTheme: IconThemeData(color: Colors.grey),
                selectedIconTheme: IconThemeData(color: MyTheme.basic),
                onTap: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.explore), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search_outlined), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.bookmark), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_outlined), label: ""),
                ]),
          ),
        ),
      ],
    )));
  }
}
