import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plant_disease_detection/app/common_widget/CustomRaisedButton.dart';
import 'package:plant_disease_detection/app/screens/forgot_password.dart';
import 'package:plant_disease_detection/app/screens/homescreen.dart';
import 'package:plant_disease_detection/app/screens/login.dart';
import 'package:plant_disease_detection/app/services/auth.dart';

import 'mainpage.dart';

const PRIMARY = "primary";
const WHITE = "white";

const Map<String, Color> myColors = {
  PRIMARY: Color.fromRGBO(55, 115, 138, 1),
  WHITE: Colors.white,
};

class Login extends StatefulWidget {
  final AuthBase auth;

  Login({@required this.auth});
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  String get _name => _nameController.text;
  String get _email => _emailController.text;
  String get _password => _passwordController.text;
  String get _address => _addressController.text;
  bool checkboxValue = false;
  String valuechoose;
  TextEditingController controller = TextEditingController();

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 6) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  void _forgotpscreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => Changepassword(),
      ),
    );
  }

  void _submit() async {
    if (_formKey.currentState.validate()) {
      try {
        {
          await widget.auth.signInWithEmailAndPassword(_email, _password);
        }
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => MainPage(
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
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bgimg.jpg'), fit: BoxFit.fill)),
          child: ListView(
            /// crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                height: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('images/pddlogo.png'),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(this.context).size.height,
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: <Widget>[
                      Container(
                        child: Container(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 32.0, fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                        // padding: EdgeInsets.all(10.0),
                        // child: TextFormField(
                        //   obscureText: true,
                        //   decoration: InputDecoration(
                        //     hintText: 'Password',
                        //     hintStyle: TextStyle(color: Colors.grey),
                        //   ),
                        // ),
                      ),

                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: "Email Adress",
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
                          validator: emailValidator,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your password",
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
                          obscureText: true,
                          validator: pwdValidator,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 60.0),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              height: 55.0,
                              child: CustomRaisedButton(
                                  color: Color(0xFFB2002D),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '  Log In',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  onPressed: _submit),
                            ),
                            SizedBox(
                              height: 22.0,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: 'Forgot or reset your password?',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Tap here',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => _forgotpscreen(context),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),

                      // Container(
                      // //  decoration: BoxDecoration(color: Colors.blue[400]),
                      //   child: Column(
                      //     children: <Widget>[
                      //       Align(
                      //         alignment: Alignment.bottomCenter,
                      //         child: Text(
                      //           "© 2021 PDD™, All Rights Reserved.",
                      //           style: TextStyle(
                      //               color: Colors.black,
                      //               fontSize: 19.0,
                      //               fontWeight: FontWeight.bold),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
