import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Group4 extends StatefulWidget {
  @override
  _Group4State createState() => _Group4State();
}

class _Group4State extends State<Group4> {
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
                return Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 1.1,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Image.network(
                          snapshot.data[index],
                          scale: 0.2,
                        );
                      },
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
