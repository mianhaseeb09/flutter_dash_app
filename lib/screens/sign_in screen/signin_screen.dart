import 'package:flutter/material.dart';
import 'package:flutter_dash_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 247),
            child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/circle.png',
                  // height: 198,
                  // width: 198,
                  color: Colors.white.withOpacity(1),
                )),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Text(
                    'Dash',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 60),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Image.asset(
                        'assets/signin.png',
                        width: 280,
                        height: 280,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 140,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 470,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Please Login to Your Account",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 60,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        suffix: Icon(
                                          FontAwesomeIcons.envelope,
                                          color: Colors.red,
                                        ),
                                        labelText: "Email Address",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: 60,
                                  child: const TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        suffix: Icon(
                                          FontAwesomeIcons.eyeSlash,
                                          color: Colors.red,
                                        ),
                                        labelText: "Password",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: Align(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Forget Password ?",
                                        style:
                                            TextStyle(color: Colors.deepOrange),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpScreen()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xFF8A2387),
                                              Color(0xFFE94057),
                                              Color(0xFFF27121),
                                            ])),
                                    child: const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 17,
                                ),
                                const Text(
                                  "Or Login using Social Media Account",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            FontAwesomeIcons.facebook,
                                            color: Colors.blue)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.google,
                                          color: Colors.redAccent,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.twitter,
                                          color: Colors.orangeAccent,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          FontAwesomeIcons.linkedinIn,
                                          color: Colors.green,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              // Column(
              //   children: [
              //
              //
              //     Stack(
              //       children: [
              //         Container(
              //           child: Image.asset(
              //             'assets/signin.png',
              //             width: 200,
              //             height: 200,
              //           ),
              //         ),
              //         Center(
              //           child: Container(
              //             height: 410,
              //             width: 100,
              //             color: Colors.white,
              //           ),
              //         )
              //       ],
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
