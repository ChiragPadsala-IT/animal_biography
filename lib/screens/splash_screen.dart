import 'package:animal/models/my_paint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                "assets/splash_image/tiger.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black45,
            ),

            Container(
              padding: EdgeInsets.only(
                  left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Animal Biography",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                              Text("We love the planet",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.menu,color: Colors.white,size: 30,),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ready to watch ?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 64,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Animals (also called Metazoa) are multicellular eukaryotic organisms that form the biological kingdom Animalia. With few exceptions, animals consume organic material, breathe oxygen, are able to move, can reproduce sexually, and grow from a hollow sphere of cells, the blastula, during embryonic development.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Start Enjoying",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamedAndRemoveUntil("/", (route) => false);
              },
              child: CustomPaint(
                foregroundPainter: MyPaint(),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(Icons.arrow_forward,color: Colors.grey,size: 40,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

