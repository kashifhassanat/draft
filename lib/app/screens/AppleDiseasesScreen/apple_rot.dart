import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';


class AppleRot extends StatefulWidget {
  @override
  _AppleRotState createState() => _AppleRotState();
}

class _AppleRotState extends State<AppleRot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("AppleRot"),
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
                            text: 'Disease AppleRot ',
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
                              ExactAssetImage("images/applerot/rot1.JPG"),
                              ExactAssetImage("images/applerot/rot2.JPG"),
                              ExactAssetImage("images/applerot/rot3.JPG"),
                              ExactAssetImage("images/applerot/ro4.JPG"),
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
                         "Black rot is caused by the fungus Diplodia seriata (syn Botryosphaeria obtusa). The fungus can infect dead tissue as well as living trunks, branches, leaves and fruits. Leaf spots don’t seriously affect the health of the tree unless many leaves turn yellow and fall off because of the infection (this is rare).",   
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
                         "Starting at petal-fall or somewhat later, small, purple specks appear on infected leaves. These specks enlarge to form spots 1/8 to 1/4 inch in diameter. The round to irregularly lobed spots develop a light brown-to-gray center surrounded by one or more dark-brown concentric rings and a purple margin giving it a “frogeye” appearance. Black pycnidia, like those that appear on rotted fruit, may develop on the upper surface in the centers of the older leaf spots. These pycnidia help to distinguish frogeye leaf spots from similar spots caused by spray injury.",
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
                        child: Text("Monitoring and management",
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
                         "Managing black rot in orchards relies on the integration of cultural and chemical methods together in an integrated pest management program. There are no cultivars completely resistant to black rot, but some are less susceptible to this disease than others (Table ). Selecting cultivars that are less susceptible to black rot for planting near sources of disease (woodlots) may help reduce yield losses.",    
                            
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),

Table(
      border: TableBorder.all(),
     
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
          TableRow(
          children: <Widget>[
            Container(
                height: 32,
                width: 60,
            child: Text("Cultivar" ,textAlign: TextAlign.center,style: TextStyle(
                         
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),

            ),
           
             Container(
                height: 32,
                width: 60,
            child: Text("Relative susceptibility" ,textAlign: TextAlign.center,style: TextStyle(
                              
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),

            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Container(
                height: 32,
                width: 60,
            child: Text("Arlet" ,textAlign: TextAlign.center,),

            ),
           
             Container(
                height: 32,
                width: 60,
            child: Text("Moderately susceptible" ,textAlign: TextAlign.center,),

            ),
          ],
        ),
        TableRow(
         
          children: <Widget>[
            Container(
                height: 32,
                width: 60,
            child: Text("Braeburn" ,textAlign: TextAlign.center,),

            ),
           Container(
                height: 32,
                width: 60,
            child: Text("	Less susceptible" ,textAlign: TextAlign.center,),

            ),
          ],
        ),
         TableRow(
         
          children: <Widget>[
            Container(
                height: 32,
                width: 60,
            child: Text("Cameo" ,textAlign: TextAlign.center,),

            ),
           Container(
                height: 32,
                width: 60,
            child: Text("Moderately susceptible" ,textAlign: TextAlign.center,),

            ),
          ],
        ),
         TableRow(
         
          children: <Widget>[
            Container(
                height: 32,
                width: 60,
            child: Text("Fuji" ,textAlign: TextAlign.center,),

            ),
           Container(
                height: 32,
                width: 60,
            child: Text("Less susceptible" ,textAlign: TextAlign.center,),

            ),
          ],
        ),
      ],
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
                        child: Text("Fungicide sprays are usually not needed for managing black rot in Minnesota.",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                 
 SizedBox(height: 10),
                     
                        SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: <TextSpan>[
                       
                            TextSpan(
                              text:
                          "Captan and sulfur products are labeled for control of both scab and black rot. A scab spray program including these chemicals may help prevent the frog-eye leaf spot of black rot, as well as the infection of fruit. These sprays will not control or prevent infection of branches.",             
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
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: <TextSpan>[
                   
                            TextSpan(
                              text:
       "Use of antibiotic streptomycin or a copper-based fungicide.",
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
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(children: <TextSpan>[
                     
                            TextSpan(
                              text:
       "Using a copper-based fungicide will protect against black rot",
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
