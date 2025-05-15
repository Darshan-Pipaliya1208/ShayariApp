import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

import 'package:pdf/widgets.dart' as pw;
import 'package:shayariapp/ShayariPage.dart';

class shayari extends StatefulWidget {
  const shayari({super.key});

  @override
  State<shayari> createState() => _shayariState();
}

class _shayariState extends State<shayari> {
  @override
  void initState() {
    super.initState();
    Forpermission();
  }

  List<String> list = [
    'Nature  shayari',
    'Inspirational shayari',
    'Birthday sharayi',
    'Motivational shayari',
    'Success shayari',
    'Friendship shayari',
    'Anniversary shayari',
    'Attitude shayari',
    'Sad shayari',
    'heart shayari',
    'Sharo shayari',
    'Eyes shayari',
    'Boys shayari',
    'Other shayari'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.monitor_heart))
        ],
        title: Card(
          color: Colors.red,
          elevation: 20,
          shadowColor: Colors.lightBlue,
          margin: EdgeInsets.all(5),
          child: Center(
              child: Text(
                "----SHAYARI----",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              )),
        ),
      ),
      body: Card(
        margin: EdgeInsets.all(10),
        color: Colors.lightBlueAccent,
        elevation: 20,
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                //pushReplacement
                //push
                //pop
                Get.to(ShayariPage(list[index]),
                    duration: Duration(seconds: 1));

                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return ShayariPage(list[index]);
                //   },
                // )
                // );
              },
              child: Card(
                color: Colors.teal,
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: Card(
                    child: Container(
                      color: Colors.teal,
                      child: Text(
                        list[index],
                        style: TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> Forpermission() async {
    var status = await Permission.photos.status;
    if (status.isDenied) {
      Permission.photos.request();
      // We haven't asked for permission yet or the permission has been denied before, but not permanently.
    }
  }

  Future<void> main() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) =>
            pw.Center(
              child: pw.Text('Hello World!'),
            ),
      ),
    );
    final file = File('example.pdf');
    await file.writeAsBytes(await pdf.save());
  }
}