import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_disease_detection/app/screens/forgot_password.dart';
import 'package:plant_disease_detection/app/services/auth_provider.dart';
import 'app/landing_page.dart';
import 'app/screens/detectimage.dart';

import 'app/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     WidgetsApp.debugAllowBannerOverride = false;
    return AuthProvider(
      auth: Auth(),
          child: MaterialApp(
        routes: {
          '/LandingPage': (context) => Landingpage(auth: Auth(),),
        },
        title: "Plant Disease Detection",
        home: LogoScreen(),
      ),
    );
  }
}

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key key}) : super(key: key);

  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  Timer timer;
  void handleTimer() {
    timer = Timer(const Duration(seconds: 2), () async {
      await Navigator.of(context)
          .pushNamed('/LandingPage')
          .then((value) => handleTimer());
    });
  }

  @override
  void initState() {
    super.initState();
    handleTimer();
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        // color: Colors.black,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('images/bgimg.jpg'), fit: BoxFit.fill),
        // ),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 600.0,
                width: 350.0,
                child: Image.asset('images/pdd_green.png'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Plant Disease Detection',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                        // color: Color(0x22C7B8),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'A Project Of University Of Sargodha',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                        // color: Color(0x4F6466),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
