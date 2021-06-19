import 'package:abhi_flutter_alertdialog/abhi_flutter_alertdialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:plant_disease_detection/app/screens/appledetect.dart';
import 'package:plant_disease_detection/app/screens/check.dart';
import 'package:plant_disease_detection/app/screens/detectimage.dart';
import 'package:plant_disease_detection/app/screens/faq.dart';
import 'package:plant_disease_detection/app/screens/profile.dart';
import 'package:plant_disease_detection/app/screens/update_profile.dart';
import 'package:plant_disease_detection/app/services/auth.dart';
import 'package:plant_disease_detection/app/signin/default_page.dart';

import 'mainpage.dart';


class AppleScreen extends StatefulWidget {
  final AuthBase auth;
  final String title;
  AppleScreen({@required this.auth, String uid, this.title});

  @override
  _AppleScreenState createState() => _AppleScreenState();
}

class _AppleScreenState extends State<AppleScreen> {
  final GlobalKey<ScaffoldState> _drawerscaffoldkey =
      new GlobalKey<ScaffoldState>();

  Future<DocumentSnapshot> getUserInfo() async {
    var firebaseUser = await FirebaseAuth.instance.currentUser();
    return await Firestore.instance
        .collection("users")
        .document(firebaseUser.uid)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildAppleScreen(),
    );
  }

 Future<void> _signOut() async {
    try {
      await widget.auth.signOut();
      
    } catch (e) {
      print(e.toString());
    }Navigator.popUntil(context, ModalRoute.withName("/"));
  }

  Widget buildAppleScreen() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Apple"),
        leading: IconButton(
          onPressed: () {
            if (_drawerscaffoldkey.currentState.isDrawerOpen) {
              Navigator.pop(this.context);
            } else {
              _drawerscaffoldkey.currentState.openDrawer();
            }
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          FlatButton(
            onPressed:() => showDialog(
                      context: context,
                      builder: (context) => AlertDialog1(
                        context: context,
                        title: 'Logout',
                        content: 'Are you sure you want to exit!!!',
                        action1: 'cancel',
                        action2: 'yes',
                        function1: () => functionA(context),
                        function2: () => functionB(context),
                        div: false,
                        txtAlign: 2,
                        radius: 0.0,
                        boxColor: Colors.redAccent,
                        btnTxtColor: Colors.white,
                        txtColor: Colors.white,
                      ),
                    ),
            child: Text(
              "Log Out",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Scaffold(
        key: _drawerscaffoldkey,
        drawer: Drawer( 
            child: SingleChildScrollView(
                child: FutureBuilder(
          future: getUserInfo(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      Container( 
                        color: Colors.lightGreen[100],
                        height: MediaQuery.of(this.context).size.height,
                        width: double.infinity,
                        child: ListView(children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  this.context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new Profile(auth: Auth())));
                            },
                            child: UserAccountsDrawerHeader(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                              ),
                              accountEmail: null,
                              accountName: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'Welcome ',
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellowAccent),
                                    ),
                                    Text(
                                      snapshot.data.data["fname"],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellowAccent),
                                    )
                                  ],
                                ),
                              ),
                              currentAccountPicture: CircleAvatar(
                                backgroundColor: Colors.green,
                                backgroundImage: AssetImage(
                                  'images/farm.png',
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Home",
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: Icon(Icons.home),
                            onTap: () {
                              Navigator.push(
                                  this.context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                         new MainPage(auth: Auth())));
                            },
                          ),
                        
                            ListTile(
                            dense: true,
                            title: Text(
                              "Query",
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: Icon(Icons.error),
                            onTap: () {
                              Navigator.push(
                                  this.context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new Faq ()));
                            },
                          ),   
                            
                        ]),
                      ),
                    ]);
                  });
            } else if (snapshot.connectionState == ConnectionState.none) {
              return Text("No data");
            }
            return CircularProgressIndicator();
          },
        ))),
        body: ListView(
          children: <Widget>[
            SizedBox(
                height: 250.0,
                width: 360.0,
                child: Carousel(
                  images: [
                    ExactAssetImage("images/APP0.jpg"),
                    ExactAssetImage("images/APP1.jpg"),
                    ExactAssetImage("images/APP2.jpg"),
                    ExactAssetImage("images/APP3.jpg"),
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
            SizedBox(height: 10),
            Text(
              "APPLE ",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("Description ",
                  style: TextStyle(
                    fontSize: 24.0,
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
                    text: 'APPLE ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
'Malus domestica, is a deciduous tree in the family Rosaceae which is grown for its fruits, known as apples. Apple fruits are one of the most widely cultivated fruits in the world, are round (pome) in shape and range in color from green to red. When planted from a seed, an apple tree can take six to ten years to mature and produce fruit of its own. ',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("Propagation ",
                  style: TextStyle(
                    fontSize: 24.0,
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
                    text: 'Apple trees ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'grow best in the tropics and at higher latitudes they require a mild growing season and a cold winter to break their dormancy. At these latitudes, the tree will flower in spring and fruit will ripen in the fall.Apple trees can also be propagated by grafting and mound layering. Grafting involves joining the lower part of one plant (root stock) with the upper part (scion) of another. A year before propagation begins, 8–10 mm (0.3–0.4 in) diameter stock plants are planted in rows and then cut back to 45–60 cm (17.7–23.6 in). They are then grown for one year. In the spring, the plants are again cut back, this time to 2.5 cm (1 in) above the ground. New shoots gradually form and more soil and bark are added in mounds around the plants.  ',   
                                 style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("Common Diseases  ",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 10),
            Text(
              "Cedar apple rust ",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                height: 250.0,
                width: 360.0,
                child: Carousel(
                  images: [
                    ExactAssetImage("images/rust1.jpg"),
                    ExactAssetImage("images/rust2.jpg"),
                    ExactAssetImage("images/rust3.jpg"),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.green.withOpacity(0.5),
                  borderRadius: true,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                )),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Symptoms",
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
              'Bright orange or yellow patches on top side of leaves surrounded by a red band and small black spots in the center; by mid-summer, cup-like structures called aecia form on the leaf undersides; these become covered in tubular structures from which spores are released',                 style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Cause",
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Fungus",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Comments",
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
             'Fungus requires two hosts to complete lifecycle; forms galls on Eastern red cedar and spores are carried by wind to apple; use caution when planting apple close to red cedar.',    style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Management",
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
               'Plant resistant varieties where possible; remove nearby red cedar; if growing susceptible varieties in proximity to red cedar follow a fungicide program.',    style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        backgroundColor: Color(0xFFB2002D),
        onPressed: () {
          Navigator.push(
              this.context,
              new MaterialPageRoute(
                  builder: (context) => new Appledisease()));
        },
      ),
    );
  }

 functionA(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  functionB(BuildContext context) {

    _signOut();
  }
}
