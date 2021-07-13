import 'package:animal/component/animal_btn.dart';
import 'package:animal/helper/title.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Stack(
          children: [
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey,Colors.brown,Colors.deepPurpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.2,0.5,1.0],
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: Container(
                color: Colors.black26,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Animal Biography",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: MediaQuery.of(context).size.width / 17,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Choose Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: MediaQuery.of(context).size.width / 12,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 30),
                    AnimalBtn(
                      voidCallback: () {
                        TitleClass.title = "Mammals\nAnimals";
                        Navigator.of(context).pushNamed("/details_screen");
                      },
                      name: "Mammals\nAnimals",
                      image: "assets/title_image/mammal.jpg",
                      icon: FaIcon(
                        FontAwesomeIcons.wolfPackBattalion,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(height: 20),
                    AnimalBtn(
                      voidCallback: () {
                        TitleClass.title = "Birds\nAnimals";
                        Navigator.of(context).pushNamed("/details_screen");
                      },
                      name: "Birds\nAnimals",
                      image: "assets/title_image/bird.jpg",
                      icon: FaIcon(
                        FontAwesomeIcons.earlybirds,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(height: 20),
                    AnimalBtn(
                      voidCallback: () {
                        TitleClass.title = "Fish\nAnimals";
                        Navigator.of(context).pushNamed("/details_screen");
                      },
                      name: "Fish\nAnimals",
                      image: "assets/title_image/fish.jpg",
                      icon: FaIcon(
                        FontAwesomeIcons.fish,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(height: 20),
                    AnimalBtn(
                      voidCallback: () {
                        TitleClass.title = "Reptiles\nAnimals";
                        Navigator.of(context).pushNamed("/details_screen");
                      },
                      name: "Reptiles\nAnimals",
                      image: "assets/title_image/reptile.jpg",
                      icon: FaIcon(
                        FontAwesomeIcons.snapchat,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
