import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimalBtn extends StatefulWidget {

  String name;
  String image;
  FaIcon icon;
  VoidCallback voidCallback;

  AnimalBtn({@required this.name,@required this.image,@required this.icon,@required this.voidCallback});

  @override
  _AnimalBtnState createState() => _AnimalBtnState();
}

class _AnimalBtnState extends State<AnimalBtn> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: (){
          widget.voidCallback();
        },
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          color: Colors.pink,
          child: Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.black38,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: MediaQuery.of(context).size.width / 20,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                    widget.icon,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
