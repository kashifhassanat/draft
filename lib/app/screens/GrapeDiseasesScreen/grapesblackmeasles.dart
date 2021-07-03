import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';

class GrapesBlackMeasles extends StatefulWidget {

  @override
  _GrapesBlackMeaslesState createState() => _GrapesBlackMeaslesState();
}

class _GrapesBlackMeaslesState extends State<GrapesBlackMeasles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("GrapesBlackMeasles"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bgimg.jpg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    height: 140.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage('images/pddlogo.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.width *
                    MediaQuery.of(context).devicePixelRatio,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Colors.white.withOpacity(0.7),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: <Widget>[
                      // Container(
                      //   child: Container(
                      //     child: Text(
                      //       user.displayName,
                      //       style: TextStyle(
                      //           fontSize: 32.0, fontWeight: FontWeight.bold),
                      //     ),
                      //     alignment: Alignment.topLeft,
                      //   ),
                      // ),

                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Disease GrapesBlackMeasles ',
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                         height: 250.0,
                width: 360.0,
                          child: Carousel(
                            images: [
                              ExactAssetImage("images/grapesblackmeasles/grapeblackmeasles.png"),
                              ExactAssetImage("images/grapesblackmeasles/grapeblackmeasles1.jpg"),
                            ],
                            dotSize: 4.0,
                            dotSpacing: 15.0,
                            dotColor: Colors.lightGreenAccent,
                            indicatorBgPadding: 5.0,
                            dotBgColor: Colors.red.withOpacity(0.5),
                            borderRadius: true,
                            moveIndicatorFromBottom: 180.0,
                            noRadiusForIndicator: true,
                          )),
                       SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Caused by",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: <TextSpan>[
                     
                            TextSpan(
                              text:
                              "The name ‘measles’ refers to the superficial spots found on the fruit. During the season, the spots may coalesce over the skin surface, making berries black in appearance.",
                           
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text:
                              "The black measles, or grapevine measles also called esca, refers to black spots found on the surface of grapes. It can develop anytime from the fruit set to days up to harvest.",
                           
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),
 SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Symptoms and Signs",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: <TextSpan>[
                     
                            TextSpan(
                              text:
                            "Black measles symptoms, usually seen in July and August, include discolored leaves and cane dieback and later spotted, spoiled fruit. Infections can lead to a 50 percent loss of new shoots and also support entry into vines by other destructive, wood rot fungi. Infected tools used during pruning and grafting may also spread the pathogens.",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),





                      
                      SizedBox(height: 4),
                      
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Pesticides ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                        SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Lime sulfur sprays can manage the trio of pathogens that cause black measles. An alternative treatment is packing infected vine cavities with any tar-like substance to seal off the fungi and stop release of their spores.",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
 SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ),
                    ]),
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
