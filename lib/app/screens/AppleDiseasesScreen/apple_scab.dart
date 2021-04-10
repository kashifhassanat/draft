import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';


class AppleScab extends StatefulWidget {
  @override
  _AppleScabState createState() => _AppleScabState();
}

class _AppleScabState extends State<AppleScab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("AppleScab"),
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
                            text: 'Disease AppleScab ',
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
                              ExactAssetImage("images/applescab/scab1.jpg"),
                              ExactAssetImage("images/applescab/scab2.jpg"),
                              ExactAssetImage("images/applescab/scab3.jpg"),
                              ExactAssetImage("images/applescab/scab4.jpg"),
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
                              "Scab is caused primarily by the fungus Venturia inaequalis. Other species of Venturia can be involved in diseases similar to apple scab.",
                           
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
                            "Superficial, velvety dark-olive-to-black spots on fruits and leaves are the initial symptoms of apple scab. These fruit spots become scablike with age and tissues may become misshapen.",
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
                        child: Text("Comments on the Disease",
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
                            "The fungus survives in dead leaves on the ground. Primary spores are discharged during spring rains and infect young leaves and fruits during prolonged moisture. Secondary spores may spread disease from established infections on trees. A lack of spring rains in most years reduces its importance in California in the southern Central Valley, but as a rule, this disease requires yearly treatments in coastal and foothill districts. Ornamental crab apples are also hosts. As plant parts mature and the weather gets warmer, susceptibility to this disease decreases, but pinpoint scab can occur during extended periods of moisture during summer." ,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),
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
                        child: Text("Not all registered pesticides are listed. The following are ranked with the pesticides having the greatest IPM value listed first—the most effective  ",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                 
 SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("DORMANT(WETTABLE SULFUR) ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),  Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("	4–6 lb/100 gal) ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                        SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: <TextSpan>[
                       TextSpan(
                              text:
                           'COMMENTS:',   style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                           "Use wettable sulfur alone after full bloom as lime sulfur may burn foliage if applied during warm weather. Lime sulfur is incompatible with most other pesticides. Check before use. Do not apply within 3 weeks of an oil application.",     style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),
Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
 
            Text("OR"),
 
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Divider(
                    color: Colors.black, 
                   
                    height: 50,
                  )),
            ),
          ]),

  SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("FOLIAGE SPRAY(	FENARIMOL) ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),  Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("	(Vintage SC)	9–12 oz/acre) ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("	MODE-OF-ACTION GROUP NAME (NUMBER1): Demethylation inhibitor (3) ",
                            style: TextStyle(
                              fontSize: 18.0,
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
                           'COMMENTS:',   style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
       "Do not apply between popcorn and full bloom. Do not apply more than 84 fl oz/acre per season.",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),

Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
 
            Text("OR"),
 
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Divider(
                    color: Colors.black, 
                   
                    height: 50,
                  )),
            ),
          ]),

  SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("FOLIAGE SPRAY(MYCLOBUTANIL) ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),  Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("	(Rally 40WSP)	Label rates) ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("		MODE-OF-ACTION GROUP NAME (NUMBER1): Demethylation inhibitor (3) ",
                            style: TextStyle(
                              fontSize: 18.0,
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
                           'COMMENTS:',   style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
       "Apply 400 gal/acre. Do not apply between popcorn and full bloom. During periods favorable for scab development, use high rate at a 7 day application interval. For postbloom control, can be used in combination with another protectant fungicide. Do not apply more than 5 lb/acre per season or graze or feed cover crops grown in treated areas to livestock. For application by ground equipment only.",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),




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
