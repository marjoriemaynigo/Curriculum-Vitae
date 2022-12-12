import 'package:flutter/material.dart';
import 'package:cv/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThirdRoute(),
    );
  }
}

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({key}) : super(key: key);

  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

//TextController to read text entered in text field
TextEditingController password = TextEditingController();
TextEditingController confirmpassword = TextEditingController();

class _ThirdRouteState extends State<ThirdRoute> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/signup.png"), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 40)),
                          Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Create an Account",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Full Name:",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder()),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your name';
                            } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value) || value.length <=2){
                              return 'Should enter alphabets only!';
                            }
                          },
                          onSaved: (value) {},
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Age",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder()),
                          keyboardType: TextInputType.number,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.length == 18 || double.parse(value) < 18) {
                            return ('Age should be 18 years old and above');
                            } else {
                              return null;
                            } 
                          }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              hintText: "Gender",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder()),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your gender';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Username:",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder()),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            } else {
                            return null;
                            }
                          }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email:", 
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder()),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (RegExp(emailRegex).hasMatch(value!)) {
                            } else if (value == null || value.isEmpty) {
                              return "* Required";
                            } else {
                              return "Enter valid email id";
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Phone No.",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder()),
                          keyboardType: TextInputType.number,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your phone number ';
                            } else if (value.length < 12 || value.length >12) {
                              return 'Please enter valid phone number';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Create a Password:",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder()),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please create a password";
                            } else if (value.length < 8) {
                              return "Must be at least 8 chars";
                            } else if (value.length > 10) {
                              return "Password should not be greater than 10 characters";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 10, right: 10),
                        child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Confirm Password:",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder()),
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please re-enter password";
                              }
                              print(password.text);

                              print(confirmpassword.text);

                              if (password.text != confirmpassword.text) {
                                return "Password does not match";
                              }
                              return null;
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border(
                                  bottom: BorderSide(color: Colors.white),
                                  top: BorderSide(color: Colors.white),
                                  right: BorderSide(color: Colors.white),
                                  left: BorderSide(color: Colors.white))),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SecondRoute()));
                                print("Successful!");

                                return;
                              } else {
                                print("Error!!!");
                              }
                            },
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? "),
                          TextButton(
                              child: Text(
                                "Login",
                                style: TextStyle( color: Colors.white,
                                    fontWeight: FontWeight.w600, 
                                    fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/second');
                              }),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}