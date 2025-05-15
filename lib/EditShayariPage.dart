import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class EditShayariPage extends StatefulWidget {
  List<String> allShayari;
  int index;

  EditShayariPage(this.allShayari, this.index, {super.key});

  @override
  State<EditShayariPage> createState() => _EditShayariPageState();
}

class _EditShayariPageState extends State<EditShayariPage> {
  List<Color> colorllist = [Colors.red, Colors.green, Colors.pink, Colors.blue];
  Color intialcolor = Colors.tealAccent;

  _createFolder() async {
    final folderName = "Shayri";
    final path = Directory("storage/emulated/0/Download/$folderName");
    if ((await path.exists())) {
      print("exist");
    } else {
      print("not exist");
      path.create();
    }
    setState(() {
      folderpath = path.path;
    });
  }

  List<String> imojis = [
    "🧨 🧧 🎇 🎆 🐉 🐲 🀄",
    "🥰 🥹 💌 🌹 🔥 🎁 🧸",
    "💖 💓 💟 💚 ❤️‍🩹 💙",
    "♦️ ♠️ ♣️ ♥️ 🎲",
    "🀄 🧩 🃏 🕹️ 🎮 🪀",
    "🎶 🎹 🎼 🥁 🎻 🎸",
    "🎺 🎷🎙️ 📻 🎧",
    "🎉 🥳 🎊 🎁",
    "🚀 🪐 🌕 🌑 ☄️ 🛸",
    "🐬 ˚˖𓍢  ִ ໋  🐋 ✧˚. 🐟⋆",
    "😀 😃 😄 😁 😆 😅",
    "😂 🤣 🥲 🥹 ☺️ 😊",
    "😇 🙂 🙃 😉 😇 👼",
    "🥰 😘 😗 😙 😚",
    "😛 😝 😜 🤪 🤨",
    "🧐 🤓 😎 🥸 🤩",
    "😨 😧 😦 😱 😫 😩",
    "😛 😝 😜 🤑 😎 😪 ",
    "😵 😵‍💫 😕 🤕 🤒 😷 🤢",
    "😐 😑 🤨 😭 😢",
    "😀 😅 😆 😃 😄 🙌",
    "😼 😽 🙀 😿 😾 🐱",
    "😃 😄 ☺️ 😁 😀 😍",
    "🌠 ☄️ 💫 🌟 🍵 ☕ 🫧 ️",
    "Without Emoji"
  ];
  String imojiss = "💐🌷🌹🌸🌺";

  // Uint8List? temp;

  Color intialtextcolor = Colors.black;
  double intialfont = 25;

  WidgetsToImageController controller = WidgetsToImageController();

  List fonts = [
    'bold',
    'darshan',
    'darshan2',
    'darshan4',
    'darshan5',
    'darshan6',
    'darshan7',
    'darshan8',
    'darshan9',
    'darshan10',
    'darshan11',
    'darshan12',
    'darshan13',
    'darshan14',
    'darshan15',
  ];
  String intialfontstyle = 'darshan';

  String folderpath = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createFolder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: WidgetsToImage(
              controller: controller,
              child: Card(
                color: intialcolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$imojiss\n${widget.allShayari[widget.index]}\n$imojiss",
                      style: TextStyle(
                          fontSize: intialfont,
                          color: intialtextcolor,
                          fontFamily: intialfontstyle),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GFButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      showColorPickerDialog1();
                    },
                    text: "BG COLOR",
                    icon: Icon(Icons.format_color_fill_rounded),
                    elevation: 10,
                    hoverColor: Colors.orange,
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    shape: GFButtonShape.pills,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: GFButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      showColorPickerDialog2();
                    },
                    text: "TEXT COLOR",
                    icon: Icon(Icons.format_color_text_rounded),
                    elevation: 10,
                    hoverColor: Colors.orange,
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    shape: GFButtonShape.pills,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: GFButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 150,
                            color: Colors.yellow,
                            child: StatefulBuilder(
                              builder: (context, index) {
                                return Slider(
                                  label: "$intialfont",
                                  min: 20,
                                  max: 40,
                                  value: intialfont,
                                  divisions: 20,
                                  onChanged: (value) {
                                    print("====$value");
                                    setState(() {
                                      index(() {
                                        intialfont = value;
                                      });
                                    });

                                    // setState(() {});
                                  },
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                    text: "FONT SIZE",
                    elevation: 10,
                    hoverColor: Colors.orange,
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    shape: GFButtonShape.pills,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GFButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            // height: 150,
                            // color: Colors.yellow,
                            child: ListView.builder(
                              itemCount: fonts.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                    onTap: () {
                                      intialfontstyle = fonts[index];
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        "Shayri",
                                        style:
                                            TextStyle(fontFamily: fonts[index]),
                                      )),
                                    ));
                              },
                            ),
                          );
                        },
                      );
                    },
                    text: "FONT STYLE",
                    elevation: 10,
                    hoverColor: Colors.orange,
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    shape: GFButtonShape.pills,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: GFButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 150,
                            // color: Colors.yellow,
                            child: ListView.builder(
                              itemCount: imojis.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                    onTap: () {
                                      if (imojis[index] == 'Without Emoji') {
                                        imojiss = "";
                                      } else {
                                        imojiss = imojis[index];
                                      }
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                          imojis[index],
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          );
                        },
                      );
                    },
                    text: "IMOJI",
                    elevation: 10,
                    hoverColor: Colors.orange,
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    shape: GFButtonShape.pills,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: GFButton(
                    onPressed: () {
                      controller.capture().then(
                        (value) async {
                          print("==$value");
                          // File (Folder/imagename)
                          DateTime time = DateTime.now();

                          String Imagename =
                              "Image${time.day}-${time.month}-${time.year}-${time.microsecond}.jpg";
                          String Imagepath = "$folderpath/$Imagename";
                          File file = File(Imagepath);
                          file.writeAsBytes(value as List<int>);
                          await file.create();
                          XFile filee = new XFile(file.path);

                          Share.shareXFiles(
                            [filee],
                            // text:
                            //     "https://play.google.com/store/apps/details?id=com.keplerians.evilnunmaze&pcampaignid=merch_published_cluster_promotion_battlestar_browse_all_games&hl=en",
                          );
                          setState(() {
                            // Share.shareXFiles([XFile('${directory.path}/image.jpg')], text: 'Great picture');
                            // temp = value;
                          });
                        },
                      );
                    },
                    text: "Share",
                    hoverColor: Colors.orange,
                    shape: GFButtonShape.pills,
                    icon: Icon(Icons.share),
                  ),
                ),
                // temp != null
                //     ? Container(
                //         height: 100, width: 100, child: Image.memory(temp!))
                //     : Image.asset(""),
              ],
            ),
          )
        ],
      ),
    );
  }

  void showColorPickerDialog1() {
    Color selectedColor = intialcolor;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedColor,
              onColorChanged: (value) {
                selectedColor = value;
              },
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    intialcolor = selectedColor;
                  });
                },
                child: Text('Ok'))
          ],
        );
      },
    );
  }

  void showColorPickerDialog2() {
    Color selectedColor = intialtextcolor;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: selectedColor,
              onColorChanged: (value) {
                selectedColor = value;
              },
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    intialtextcolor = selectedColor;
                  });
                },
                child: Text('Ok'))
          ],
        );
      },
    );
  }
}
