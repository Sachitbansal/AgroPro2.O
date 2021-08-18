import 'package:agro_pro/Widgets/OrDivider.dart';
import 'package:agro_pro/Widgets/custom_page_route.dart';
import 'package:agro_pro/Widgets/rounded_input_fields.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passVisible = true;
  bool confirmPassVisible = true;

  @override
  Widget build(BuildContext context) {
    String fPassword;
    String email;
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage('https://i.ibb.co/x3Z6cdm/green.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(177, 230, 192, .3),
                            blurRadius: 20.0,
                            offset: Offset(5, 5))
                      ]),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .2),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(177, 230, 192, .3),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                            child: RoundedInputField(
                              label: 'Agro ID',
                              keyboardtype: TextInputType.emailAddress,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter an Email';
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return 'Please Enter a Valid Email';
                                }
                              },
                              onChanged: (value) {
                                email = value!;
                              },
                              iconChoose: Icons.account_circle,
                              hint: 'Your ID',
                              suffixiIcon: Icons.account_circle,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(177, 230, 192, .3),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                            child: TextFormField(
                              validator: (val) => val!.length < 6
                                  ? 'Password too short.'
                                  : null,
                              obscureText: passVisible,
                              cursorColor: Colors.green[800],
                              decoration: InputDecoration(
                                fillColor: Colors.green[50],
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15.0),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(width: 0.8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(
                                      width: 0.9, color: Colors.green),
                                ),
                                hintText: 'Enter Password',
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    passVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  color: Colors.green,
                                  onPressed: () {
                                    setState(() {
                                      passVisible = !passVisible;
                                    });
                                  },
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                  // size: 30.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(175, 251, 143, 1),
                              Color.fromRGBO(143, 251, 175, 1),
                            ])),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      GestureDetector(
                          onTap: () => Navigator.push(context,
                                  CustomPageRoute(child: LoginScreen())),
                          child: Text(
                            "Already have an Account? Login",
                            style: TextStyle(
                                color: Color.fromRGBO(177, 230, 192, 1)),
                          )),
                      OrDivider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(color: Colors.greenAccent),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 1.0), //(x,y),
                                ),
                              ],
                            ),
                            child: IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.google,
                                ),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(color: Colors.greenAccent),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 1.0), //(x,y),
                                ),
                              ],
                            ),
                            child: IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.facebookF,
                                ),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(color: Colors.greenAccent),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 1.0), //(x,y),
                                ),
                              ],
                            ),
                            child: IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.twitter,
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
