import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/types/gf_button_type.dart';


// Radio , CheckBox ==



class buttonpage extends StatefulWidget {
  const buttonpage({super.key});

  @override
  State<buttonpage> createState() => _buttonpageState();
}

class _buttonpageState extends State<buttonpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GFIconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          GFButton(
            onPressed: (){},
            text: "primary",
            icon: Icon(Icons.share),
          ),
          GFButton(
            onPressed: (){},
            text: "primary",
            icon: Icon(Icons.share),
            type: GFButtonType.transparent,
          ),
          GFImageOverlay(
            height: 200,
            width: 200,
            shape: BoxShape.circle,
            image:NetworkImage('https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFuJTIwYXZhdGFyfGVufDB8fDB8fHww'),
            boxFit: BoxFit.cover,
          ),GFListTile(
              avatar:GFAvatar(),
              titleText:'Title',
              subTitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.favorite,)
          ),
        ],
      ),
    );
  }
}
