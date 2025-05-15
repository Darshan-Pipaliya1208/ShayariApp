import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayariapp/EditShayariPage.dart';

class SubShayariPage extends StatefulWidget {
  List<String> allShayari;
  int index;

  SubShayariPage(this.allShayari, this.index, {super.key});

  @override
  State<SubShayariPage> createState() => _SubShayariPageState();
}

class _SubShayariPageState extends State<SubShayariPage> {
  // int _selectedIndex = 0;
  //
  // void _onItemTapped(int index) {
  //   // Check if the user is already on the first page (Home Page)
  //   if (index == 0 && _selectedIndex != 0) {
  //     // You can also pop the current screen if the user is not on the home screen
  //     Navigator.pop(context);
  //   } else {
  //     setState(() {
  //       _selectedIndex = index;
  //     });
  //   }
  // }

  List<String> list = [];

  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: widget.index);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: widget.allShayari.length,
              onPageChanged: (value) {
                setState(() {
                  widget.index = value;
                });
              },
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.tealAccent,
                          Colors.red,
                          Colors.purpleAccent
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.4, 0.9, 0.9, 0.3],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${index + 1}',
                          style: TextStyle(fontSize: 50),
                        ),
                        Text(
                          widget.allShayari[widget.index],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GFButton(
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(
                          text: "${widget.allShayari[widget.index]}"))
                      .then(
                    (value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Your Text Copied!")));
                    },
                  );
                },
                text: "copy",
                shape: GFButtonShape.pills,
              ),

              ElevatedButton(
                onPressed: () {
                  if (widget.index > 0) {
                    widget.index--;
                  } else {
                    // ScaffoldMessenger.of(context)
                    //     .showSnackBar(SnackBar(content: Text("No More Left")));
                    Get.defaultDialog(
                        content: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "No more left!!!",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ));
                  }
                  setState(() {});
                },
                child: Text(
                  "<-",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Get.to(EditShayariPage(widget.allShayari, widget.index),
                        duration: Duration(seconds: 1));
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return EditShayariPage(widget.allShayari, widget.index);
                    //   },
                    // ));
                  },
                  icon: Icon(Icons.edit)),
              ElevatedButton(
                onPressed: () {
                  if (widget.allShayari.length - 1 > widget.index) {
                    widget.index++;
                  } else {
                    Get.defaultDialog(
                        content: Column(
                      children: [
                        Text(
                          "No more right!!!",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ));
                  }
                  setState(() {});
                },
                child: Text(
                  "->",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              // IconButton(
              //     onPressed: () {
              //       Share.share('${widget.allShayari[widget.index]}');
              //     },
              //     icon: Icon(Icons.share)),

              GFButton(
                onPressed: () {
                  Share.share('${widget.allShayari[widget.index]}');
                },
                text: "Share",
                icon: Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.arrow_back),
      //       label: 'Back',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.arrow_forward),
      //       label: 'Forward',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.blue,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
