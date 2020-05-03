import 'package:flutter/material.dart';
import 'package:flutter_router/route_names.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Get.snackbar(
              "hi",
              "i am a modern snackbar",
              snackPosition: SnackPosition.BOTTOM,
            );
          },
        ),
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Get.toNamed(SecondRoute);
          },
        ),
      ),
    );
  }
}
