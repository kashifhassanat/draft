import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:plant_disease_detection/app/landing_page.dart';
import 'package:plant_disease_detection/app/screens/appledetect.dart';
import 'package:plant_disease_detection/app/screens/check.dart';
import 'package:plant_disease_detection/app/screens/detectimage.dart';
import 'package:plant_disease_detection/app/screens/faq.dart';
import 'package:plant_disease_detection/app/screens/profile.dart';
import 'package:plant_disease_detection/app/screens/update_profile.dart';
import 'package:plant_disease_detection/app/services/auth.dart';
import 'package:plant_disease_detection/app/signin/default_page.dart';

import 'grapesdetect.dart';
import 'mainpage.dart';


class GrapesScreen extends StatefulWidget {
  final AuthBase auth;
  final String title;
  GrapesScreen({@required this.auth, String uid, this.title});

  @override
  _GrapesScreenState createState() => _GrapesScreenState();
}

class _GrapesScreenState extends State<GrapesScreen> {
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
      body: buildGrapesScreen(),
    );
  }

 Future<void> _signOut() async {
    try {
      await widget.auth.signOut();
      
    } catch (e) {
      print(e.toString());
    }Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Landingpage(auth : Auth()),), (route) => route.isFirst);
  }

  Widget buildGrapesScreen() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Grapes"),
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
            onPressed: _signOut,
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
                                color: Colors.purple,
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
                    ExactAssetImage("images/grp1.jpg"),
                    ExactAssetImage("images/grp2.jpg"),
                    ExactAssetImage("images/grp3.jpg"),
                    ExactAssetImage("images/grp4.jpg"),
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
              "GRAPES ",
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
                    text: 'Grapes ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                      'the Common or European grapevine (Vitis vinifera) is a long stemmed, woody vine (liana) which produces high value berries, or grapes. The vines can reach lengths in excess of 30 m and can live for many years with proper management. The leaves of the grape vine are alternately arranged on the stem and are long and broad with 5–7 lobes, typically reaching sizes of 5–20 cm (2.0–7.9 in). Flowers are produced in clusters and fruit.',        style: TextStyle(
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
                    text: 'Basic requirements ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                ' The first consideration when attempting to cultivate grape is to select a variety based on the prevailing local climate, with the best production occurring in hot, dry regions.Preparation Grape vines are usually planted as dormant bare root vines in Spring. Young plants can be purchased from nurseries and garden centres for planting in the home garden. Grape vines require a trellis and this should be built before the vines are planted in the ground.Planting New vines should be planted out in Spring after all danger of frost has passed. Dig a hole for each plant approximately 30 cm (12 in) deep and 30 cm (12 in) wide, spaced 1.8– 3.0 m (6–10 ft) apart and plant the vine at the same level as the nursery.',      style: TextStyle(
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
              "Esca (Black Measles or Spanish Measles)",
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
                    ExactAssetImage("images/esca1.jpg"),
                    ExactAssetImage("images/esca2.jpg"),
                    ExactAssetImage("images/esca3.jpg"),
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
              'Symptom appears on leaves, trunk, canes and berries. On leaves we will see intervenaial striping looks like tiger strips. White cultivars shows chlorotic and necrotic strips where as red cultivars shows red areas and necrotic strips. On berries we will see superficial spots and later may coalesce making berries appear black. Trunk/arm/cordons shows dark brown black vascular streaking and oozes dark sap when we cut trunk. Some time this measles in associate with numerous secondary wood rotting fungi which decorate the vineyard completely',    style: TextStyle(
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
             'The leaf and berry symptoms may occur together in single cane or may show symptom on only one parts. The severe infestation of measles kill grapevine in a single year which is commonly called apoplexy. The symptoms are common in 5 to 7 year old vineyard. The prune wounds helps in pathogen entrance and establishment.',      style: TextStyle(
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
            'Till date there is no effective method to control this disease. Remove the infected berries, leaves and trunk and destroy them. Protect the prune wounds to minimize fungal infection using wound sealant (5% boric acid in acrylic paint) or essential oil or suitable fungicides.',       style: TextStyle(
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
                  builder: (context) => new GrapesDiesease()));
        },
      ),
    );
  }
}
