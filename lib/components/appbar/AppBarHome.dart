import 'dart:ui';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(60);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xffd9bd97),
      leading: IconButton(
          icon: Icon(Icons.menu, color: Color(0xffa96346)),
          onPressed: null,
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Icon(Icons.shopping_cart, color: Color(0xffa96346)),
        )
      ],
    );
  }

}