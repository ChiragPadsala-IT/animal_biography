import 'package:animal/helper/DB.dart';
import 'package:animal/models/animal.dart';
import 'package:animal/screens/details_screen.dart';
import 'package:animal/screens/home_screen.dart';
import 'package:animal/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  addDataIntodataBase()async{
    await dbh.initMammalDb();
    await dbh.deleteMammalData();
    mammals.forEach((element) async {
      await dbh.insertMammalData(element);
    });

    await dbh.deleteBirdData();
    birds.forEach((element) async {
      await dbh.insertBirdData(element);
    });

    await dbh.deleteFishData();
    fish.forEach((element) async {
      await dbh.insertFishData(element);
    });

    await dbh.deleteReptileData();
    reptiles.forEach((element) async {
      await dbh.insertReptileData(element);
    });
  }

  @override
  void initState() {
    addDataIntodataBase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        "/" : (context) => HomeScreen(),
        "/splash_screen" : (context) => SplashScreen(),
        "/details_screen" : (context) => DetailsScreen(),
      },
    );
  }
}
