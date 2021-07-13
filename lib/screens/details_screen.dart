import 'package:animal/component/quick_btn.dart';
import 'package:animal/helper/DB.dart';
import 'package:animal/helper/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  List dataList = [];

  getMammalsDetails()async{
    List data = await dbh.getMammalData();
    print("Length = ${data.length}");
    setState(() {
      data.forEach((element) {
        dataList.add(element);
      });
    });
  }

  getBirdsDetails()async{
    List data = await dbh.getBirdData();

    setState(() {
      data.forEach((element) {
        dataList.add(element);
      });
    });
  }

  getFishDetails()async{
    List data = await dbh.getFishData();

    setState(() {
      data.forEach((element) {
        dataList.add(element);
      });
    });
  }

  getReptilesDetails()async{
    List data = await dbh.getReptileData();

    setState(() {
      data.forEach((element) {
        dataList.add(element);
      });
    });
  }

  @override
  void initState() {
    if(TitleClass.title == "Mammals\nAnimals"){
      getMammalsDetails();
      TitleClass.titleImage = "assets/title_image/mammal.jpg";
    }else if(TitleClass.title == "Birds\nAnimals"){
      getBirdsDetails();
      TitleClass.titleImage = "assets/title_image/bird.jpg";
    }else if(TitleClass.title == "Fish\nAnimals"){
      getFishDetails();
      TitleClass.titleImage = "assets/title_image/fish.jpg";
    }else if(TitleClass.title == "Reptiles\nAnimals"){
      getReptilesDetails();
      TitleClass.titleImage = "assets/title_image/reptile.jpg";
    }else{
      print("data not found...");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(TitleClass.titleImage).image,
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
              )
            ),
            child: Text(
              TitleClass.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: MediaQuery.of(context).size.width / 20,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey,Colors.brown,Colors.deepPurpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.2,0.5,1.0],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Related For you ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: MediaQuery.of(context).size.width / 20,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 20),
                      (dataList.isNotEmpty)?SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: dataList
                              .map(
                                (e) => Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height:
                                      MediaQuery.of(context).size.height /
                                          2.7,
                                      width:
                                      MediaQuery.of(context).size.width /
                                          2.3,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(e.image),
                                          fit: BoxFit.fill,
                                        ),
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    e.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.width /
                                          24,
                                      color: Colors.white,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  Container(
                                    height:
                                    MediaQuery.of(context).size.height /
                                        8,
                                    width: MediaQuery.of(context).size.width /
                                        2.3,
                                    child: Text(
                                      e.info,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: MediaQuery.of(context)
                                            .size
                                            .width /
                                            35,
                                        color: Colors.white,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                                ),
                          )
                              .toList(),
                        ),
                      ):Center(
                        child: CircularProgressIndicator(),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Quick Category",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: MediaQuery.of(context).size.width / 20,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            QuickBTN(
                              name: "Mammal",
                              icon: FaIcon(
                                FontAwesomeIcons.wolfPackBattalion,
                                size: 70,
                                color: Colors.white,
                              ),
                              voidCallback: () {
                                TitleClass.title = "Mammals\nAnimals";
                                Navigator.of(context).pushNamed("/details_screen");
                              },
                            ),
                            SizedBox(width: 20),
                            QuickBTN(
                              name: "Bird",
                              icon: FaIcon(
                                FontAwesomeIcons.earlybirds,
                                size: 70,
                                color: Colors.white,
                              ),
                              voidCallback: () {
                                TitleClass.title = "Birds\nAnimals";
                                Navigator.of(context).pushNamed(
                                    "/details_screen",
                                    arguments: "Birds\nAnimals");
                              },
                            ),
                            SizedBox(width: 20),
                            QuickBTN(
                              name: "Fish",
                              icon: FaIcon(
                                FontAwesomeIcons.fish,
                                size: 70,
                                color: Colors.white,
                              ),
                              voidCallback: () {
                                TitleClass.title = "Fish\nAnimals";
                                Navigator.of(context).pushNamed(
                                    "/details_screen",
                                    arguments: "Fish\nAnimals");
                              },
                            ),
                            SizedBox(width: 20),
                            QuickBTN(
                              name: "Reptiles",
                              icon: FaIcon(
                                FontAwesomeIcons.snapchat,
                                size: 70,
                                color: Colors.white,
                              ),
                              voidCallback: () {
                                TitleClass.title = "Reptiles\nAnimals";
                                Navigator.of(context).pushNamed(
                                    "/details_screen",
                                    arguments: "Reptiles\nAnimals");
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
