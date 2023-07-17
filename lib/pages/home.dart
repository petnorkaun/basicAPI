// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, non_constant_identifier_names, duplicate_ignore

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// ignore: duplicate_ignore
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knokledge"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20), //ใส่เพื่อเว้นระยะห่างกับขอบจอ
          child: FutureBuilder(
            builder: (Context, snapshot) {
              var data = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return MyBox(data[index]['title'], data[index]['subtitle'],
                      data[index]['image_url'], data[index]['detail']);
                },
                itemCount: data.length,
              );
            },
            future:
                DefaultAssetBundle.of(context).loadString('assets/data.json'),
          )),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyBox(String title, String subtitle, String image_url, String detail) {
    var v1 = title;
    var v2 = subtitle;
    var v3 = image_url;
    var v4 = detail;
    return Container(
      //margin: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20), //เว้นระยะในกรอบ container
      //color: Colors.blue[50],
      height: 200,
      decoration: BoxDecoration(
          //color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(image_url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.25), BlendMode.darken))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                print("Next Pages>>>");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailOPage(v1, v2, v3, v4)));
              },
              child: Text(
                "อ่านต่อ...",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ))
        ],
      ),
    );
  }
}
