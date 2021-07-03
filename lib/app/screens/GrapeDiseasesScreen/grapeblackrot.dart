import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';

class GrapeBlackRot extends StatefulWidget {

  @override
  _GrapeBlackRotState createState() => _GrapeBlackRotState();
}

class _GrapeBlackRotState extends State<GrapeBlackRot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("GrapeBlackRot"),
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
                            text: 'Disease GrapeBlackRot ',
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
                              ExactAssetImage("images/grapeblackrot/blackrot1.jpg"),
                              ExactAssetImage("images/grapeblackrot/blackrot2.jpg"),
                              ExactAssetImage("images/grapeblackrot/blackrot3.jpg"),
                              ExactAssetImage("images/grapeblackrot/blackrot4.jpg"),
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
                              "Black rot, caused by the fungus Guignardia bidwellii, is a serious disease of cultivated and wild grapes. The disease is most destructive in warm, wet seasons. It attacks all green parts of the vine – leaves, shoots, leaf and fruit stems, tendrils, and fruit. The most damaging effect is to the fruit.",
                           
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
                            "Reddish brown and circular to angular spots appear on the upper surface of the leaves starting in late spring. As spots merge, they form irregular, reddish brown blotches. The number of spots or lesions per leaf varies from 2 to more than 100 depending on the severity of the disease. The center of the leaf spot turns tannish brown and is surrounded by a black margin. Black, speck-sized fruiting bodies (pycnidia) are arranged in a definite ring just inside the margin of the lesion. Only young, rapidly growing leaves are affected.",
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
                        child: Text("Use protective fungicide sprays. Pesticides registered to protect the developing new growth include copper, captan, ferbam, mancozeb, maneb, triadimefon, and ziram. Important spraying times are as new shoots are 2 to 4 inches long, and again when they are 10 to 15 inches long, just before bloom, just after bloom, and when the fruit has set.",
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
