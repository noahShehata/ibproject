import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Group1 extends StatefulWidget {
  @override
  _Group1State createState() => _Group1State();
}

class _Group1State extends State<Group1> {
  List images = [];
  Future<List> getImages() async {
    var response =
        await http.get("https://thecoderschool-d7725.firebaseio.com/0/0.json");

    var decodedimages = jsonDecode(response.body);
    images = List.from(decodedimages);
    print(images);
    return images;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          FutureBuilder(
              future: getImages(),
              builder: (context, snapshot) {
                return Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100.0,
                        padding: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: Image(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(snapshot.data[index]),
                        ),
                      );
                    },
                  ),
                );
              })
        ],
      ),
    );
  }
}
