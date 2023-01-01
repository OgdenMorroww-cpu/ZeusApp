// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() => runApp(ZeusApp());

class ZeusApp extends StatelessWidget {
  const ZeusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ZeusApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Georgia",
      ),
      home: ZeusHomePage(),
    );
  }
}

class ZeusHomePage extends StatefulWidget {
  const ZeusHomePage({super.key});

  @override
  State<ZeusHomePage> createState() => _ZeusHomePageState();
}

class _ZeusHomePageState extends State<ZeusHomePage> {
  Color _color = Colors.black;

  void _changeColor() {
    setState(() {
      _color = _color == Colors.black ? Colors.red : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ZeusApp"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Happy New Year",
              style: TextStyle(
                color: _color,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600,
                fontSize: 25.5,
              ),
            ),
            SizedBox(height: 12.5),
            MaterialButton(
              onPressed: _changeColor,
              child: Text("Switch Colors"),
              textColor: Colors.white,
              color: Colors.indigoAccent,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.5),
              ),
              height: 45.8,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Profile",
            tooltip: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: Colors.black,
            ),
            label: "Wallet",
            tooltip: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: "Search",
            tooltip: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: "Settings",
            tooltip: "Settings",
          ),
        ],
      ),
    );
  }
}
