import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 320,
                padding: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: const Offset(0, 4),
                        blurRadius: 1.0,
                        spreadRadius: 0)
                  ],
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),

                // child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Center(
                      child: Text("Log In",
                          style: TextStyle(
                              fontSize: 38.0, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      controller: emailController,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                      cursorColor: Color.fromARGB(255, 231, 169, 54),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle_outlined,
                            color: Colors.grey.shade300),
                        hintText: 'Email',
                        contentPadding:
                            EdgeInsets.only(left: 30.0, right: 30.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 231, 169, 54),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: passwordController,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                      cursorColor: Color.fromARGB(255, 231, 169, 54),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outlined,
                            color: Colors.grey.shade300),
                        hintText: 'Password',
                        contentPadding:
                            EdgeInsets.only(left: 30.0, right: 30.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 231, 169, 54),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },
                        child: Text("Submit",
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 231, 169, 54),
                            padding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 30.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "By clicking this button, you agree with the Terms and Conditions",
                        style: TextStyle(
                            fontSize: 10.0, color: Color(0xff5E5E5E))),
                  ],
                )))
      ],
    ));
  }
}
