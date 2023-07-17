// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DetailOPage extends StatefulWidget {
  final v1, v2, v3, v4;
  DetailOPage(this.v1, this.v2, this.v3, this.v4);

  @override
  State<DetailOPage> createState() => _DetailOPageState();
}

class _DetailOPageState extends State<DetailOPage> {
  var _v1, _v2, _v3, _v4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              _v1,
              style: TextStyle(fontSize: 30),
            ),
            Text(_v2),
            Image.network(_v3),
            Text(_v4)
          ],
        ),
      ),
    );
  }
}
