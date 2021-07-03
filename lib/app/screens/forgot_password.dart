import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plant_disease_detection/app/common_widget/CustomRaisedButton.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:plant_disease_detection/app/landing_page.dart';
import 'package:plant_disease_detection/app/screens/mainpage.dart';
import 'package:plant_disease_detection/app/services/auth.dart';
import 'package:plant_disease_detection/app/signin/default_page.dart';


class Changepassword extends StatefulWidget {
  @override
  _Changepassword createState() => _Changepassword();
}


class _Changepassword extends State<Changepassword> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  bool checkboxValue = false;
  String valuechoose;
  String _email;

  TextEditingController controller = TextEditingController();


void _submit() async {
      try {
        {
          await auth.sendPasswordResetEmail(email: _email);
        }
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => Landingpage(
                      auth: Auth(),
                    )),
            (Route<dynamic> route) => false);
      } catch (e) {
        print(e.message);
        Fluttertoast.showToast(
            msg: e.message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
      CircularProgressIndicator(
        backgroundColor: Colors.redAccent,
        valueColor: AlwaysStoppedAnimation(Colors.green),
        strokeWidth: 10,
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return DefaultPage(auth: Auth(),);
                                      })),
        ),
        backgroundColor: Colors.green.withOpacity(0.6),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/main.png'), fit: BoxFit.fill)),
        child: ListView(
          /// crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 3.0),
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
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.6),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Container(
                      child: Container(
                        child: Text(
                          "Change Account Password",
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/faq.png'),
                              fit: BoxFit.contain),
                        ),
                        width: 200,
                        height: 150,
                      ),
                    Container(
                      child: Container(
                        child: Text(
                          "Enter your email address below to change your password",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w300),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                      // padding: EdgeInsets.all(10.0),
                      // child: TextField(
                      //   obscureText: true,
                      //   decoration: InputDecoration(
                      //     hintText: 'Password',
                      //     hintStyle: TextStyle(color: Colors.grey),
                      //   ),
                      // ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          hintText: "Enter your email",
                          // hoverColor: Colors.black,
                          fillColor: Colors.white, filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            // borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _email = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(30),
                      color: Colors.green.withOpacity(0.7),
                      splashColor: Colors.redAccent,
                      shape: CircleBorder(),
                      // shape: StadiumBorder(),
                      child: Text('SUBMIT',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                      //makes background color white
                      onPressed: _submit
                      ),
                    Container(
                      padding: const EdgeInsets.all(68),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}
