import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuickBTN extends StatefulWidget {

  String name;
  FaIcon icon;
  VoidCallback voidCallback;

  QuickBTN({this.name,this.icon,this.voidCallback});

  @override
  _QuickBTNState createState() => _QuickBTNState();
}

class _QuickBTNState extends State<QuickBTN> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            widget.voidCallback();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: MediaQuery.of(context).size.width/3.5,
              width: MediaQuery.of(context).size.width/3.5,
              color: Colors.white54,
              alignment: Alignment.center,
              child: widget.icon,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(widget.name,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: MediaQuery.of(context).size.width / 27,
          color: Colors.white,
          letterSpacing: 2,
        ),),
      ],
    );
  }
}
