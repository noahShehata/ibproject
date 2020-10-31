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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String purpose =
      "As a former student of the International Baccalaureate (IB) program, I understand the rigorousness of the program’s courses and the importance of recieving help from fellow IB students. With this understanding, I wish to create a network of IB students that mutually share resources such as notes, past papers, and personally completed Internal Assessments.";
  final String contactme =
      "Contact Me:\n(813)373-8879\nbvbfootballer@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 50.0),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey),
                      child: Image(image: AssetImage("logo.png")),
                      width: 150.0,
                      height: 150.0),
                  SizedBox(width: 70.0),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey),
                    width: 900.0,
                    height: 150.0,
                    child: Center(
                      child: Text(
                        "ourIB Resources",
                        style: TextStyle(fontSize: 70.0),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50.0),
              Row(
                children: [
                  SizedBox(width: 50.0),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey),
                      width: 750,
                      height: 350,
                      child: Column(
                        children: [
                          Text(
                            "Updates",
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      )),
                  Image(
                    image: AssetImage("design.png"),
                    width: 700.0,
                    height: 350.0,
                    fit: BoxFit.contain,
                  )
                ],
              ),
              SizedBox(height: 50.0),
              Row(
                children: [
                  SizedBox(width: 50.0),
                  Image(
                    image: AssetImage("design.png"),
                    width: 700.0,
                    height: 350.0,
                    fit: BoxFit.contain,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey),
                      width: 750,
                      height: 300,
                      child: Column(
                        children: [
                          Text(
                            "Purpose",
                            style: TextStyle(fontSize: 30),
                          ),
                          Center(
                            child: Text(
                              purpose,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25.0),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 50.0),
                  Container(
                    height: 75.0,
                    width: 700.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey),
                    child: Center(
                        child: Text(contactme, textAlign: TextAlign.center)),
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 25.0, left: 50.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(Group4());
                      },
                      child: Text(
                        "Group 1:\nLanguage and Literature",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                        textAlign: TextAlign.center,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Group 2:\nLanguage Acquisition",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                        textAlign: TextAlign.center,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Group 3:\nIndividuals and Socities",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                        textAlign: TextAlign.center,
                      )),
                  TextButton(
                      onPressed: () {
                        print("Group 4");
                      },
                      child: Text(
                        "Group 4:\nThe Sciences",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                        textAlign: TextAlign.center,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Group 5:\nMathematics",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                        textAlign: TextAlign.center,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Group 6:\nThe Arts",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
