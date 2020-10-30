import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibproject/group4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Groups(),
    );
  }
}

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width / 1.2,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {
                          Get.to(Group4());
                        },
                        child: Text("Group 1")),
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text("Group 2")),
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text("Group 3")),
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {
                          print("Group 4");
                        },
                        child: Text("Group 4")),
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text("Group 5")),
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text("Group 6"))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
