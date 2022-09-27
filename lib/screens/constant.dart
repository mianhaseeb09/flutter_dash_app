// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class SignInScreen extends StatefulWidget {
//   const SignInScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }
//
// class _SignInScreenState extends State<SignInScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.redAccent,
//       body: SingleChildScrollView(
//         child: Container(
//           margin: const EdgeInsets.all(10),
//           child: Column(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.only(top: 100),
//                 child: Center(
//                   child: Text(
//                     'Dash',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 60),
//                   ),
//                 ),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//
//                 child: Stack(
//
//                   children: [
//                     Positioned(
//                       top:180,
//
//                       left: 280,
//                       child: Image.asset(
//                         'assets/signin.png',
//                         width: 280,
//                         height: 280,
//                       ),
//                     ),
//                     Center(
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           top: 140,
//                         ),
//                         child: Container(
//                           width: 360,
//                           height: 470,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             borderRadius:
//                             BorderRadius.all(Radius.circular(18)),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               const SizedBox(
//                                 height: 30,
//                               ),
//                               const Text(
//                                 "Sign In",
//                                 style: TextStyle(
//                                     fontSize: 28,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               const Text(
//                                 "Please Login to Your Account",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 30,
//                               ),
//                               const SizedBox(
//                                 width: 320,
//                                 height: 60,
//                                 child: TextField(
//                                   decoration: InputDecoration(
//                                       suffix: Icon(
//                                         FontAwesomeIcons.envelope,
//                                         color: Colors.red,
//                                       ),
//                                       labelText: "Email Address",
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(8)),
//                                       )),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               const SizedBox(
//                                 width: 320,
//                                 height: 60,
//                                 child: TextField(
//                                   obscureText: true,
//                                   decoration: InputDecoration(
//                                       suffix: Icon(
//                                         FontAwesomeIcons.eyeSlash,
//                                         color: Colors.red,
//                                       ),
//                                       labelText: "Password",
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(8)),
//                                       )),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(right: 20),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     TextButton(
//                                       onPressed: () {},
//                                       child: const Text(
//                                         "Forget Password",
//                                         style: TextStyle(
//                                             color: Colors.deepOrange),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               GestureDetector(
//                                 child: Container(
//                                   alignment: Alignment.center,
//                                   width: 320,
//                                   decoration: const BoxDecoration(
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(50)),
//                                       gradient: LinearGradient(
//                                           begin: Alignment.centerLeft,
//                                           end: Alignment.centerRight,
//                                           colors: [
//                                             Color(0xFF8A2387),
//                                             Color(0xFFE94057),
//                                             Color(0xFFF27121),
//                                           ])),
//                                   child: const Padding(
//                                     padding: EdgeInsets.all(12.0),
//                                     child: Text(
//                                       'Login',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 17,
//                               ),
//                               const Text(
//                                 "Or Login using Social Media Account",
//                                 style:
//                                 TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                           FontAwesomeIcons.facebook,
//                                           color: Colors.blue)),
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         FontAwesomeIcons.google,
//                                         color: Colors.redAccent,
//                                       )),
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         FontAwesomeIcons.twitter,
//                                         color: Colors.orangeAccent,
//                                       )),
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         FontAwesomeIcons.linkedinIn,
//                                         color: Colors.green,
//                                       ))
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               // Column(
//               //   children: [
//               //
//               //
//               //     Stack(
//               //       children: [
//               //         Container(
//               //           child: Image.asset(
//               //             'assets/signin.png',
//               //             width: 200,
//               //             height: 200,
//               //           ),
//               //         ),
//               //         Center(
//               //           child: Container(
//               //             height: 410,
//               //             width: 100,
//               //             color: Colors.white,
//               //           ),
//               //         )
//               //       ],
//               //     )
//               //   ],
//               // )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// OrientationBuilder(
// builder: (context, orientation) {
// return orientation == Orientation.landscape
// ? SingleChildScrollView(
// child: Container(
// margin: const EdgeInsets.all(10),
// child: Column(
// children: [
// const Padding(
// padding: EdgeInsets.only(top: 100),
// child: Center(
// child: Text(
// 'Dash',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.white,
// fontSize: 60),
// ),
// ),
// ),
// Container(
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
//
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: <Widget>[
// Stack(
//
// children: [
// Align(
// alignment: Alignment.topRight,
// child: Image.asset(
// 'assets/signin.png',
// width: 280,
// height: 280,
// ),
// ),
// Center(
// child: Padding(
// padding: const EdgeInsets.only(
// top: 140,
// ),
// child: Container(
// width: 360,
// height: 470,
// decoration: const BoxDecoration(
// color: Colors.white,
// borderRadius:
// BorderRadius.all(Radius.circular(18)),
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// const SizedBox(
// height: 30,
// ),
// const Text(
// "Sign In",
// style: TextStyle(
// fontSize: 28,
// fontWeight: FontWeight.bold),
// ),
// const SizedBox(
// height: 10,
// ),
// const Text(
// "Please Login to Your Account",
// style: TextStyle(
// color: Colors.grey,
// fontSize: 15,
// ),
// ),
// const SizedBox(
// height: 30,
// ),
// const SizedBox(
// width: 320,
// height: 60,
// child: TextField(
// decoration: InputDecoration(
// suffix: Icon(
// FontAwesomeIcons.envelope,
// color: Colors.red,
// ),
// labelText: "Email Address",
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(8)),
// )),
// ),
// ),
// const SizedBox(
// height: 15,
// ),
// const SizedBox(
// width: 320,
// height: 60,
// child: TextField(
// obscureText: true,
// decoration: InputDecoration(
// suffix: Icon(
// FontAwesomeIcons.eyeSlash,
// color: Colors.red,
// ),
// labelText: "Password",
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(8)),
// )),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(right: 20),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextButton(
// onPressed: () {},
// child: const Text(
// "Forget Password",
// style: TextStyle(
// color: Colors.deepOrange),
// ),
// )
// ],
// ),
// ),
// GestureDetector(
// child: Container(
// alignment: Alignment.center,
// width: 320,
// decoration: const BoxDecoration(
// borderRadius: BorderRadius.all(
// Radius.circular(50)),
// gradient: LinearGradient(
// begin: Alignment.centerLeft,
// end: Alignment.centerRight,
// colors: [
// Color(0xFF8A2387),
// Color(0xFFE94057),
// Color(0xFFF27121),
// ])),
// child: const Padding(
// padding: EdgeInsets.all(12.0),
// child: Text(
// 'Login',
// style: TextStyle(
// color: Colors.white,
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ),
// const SizedBox(
// height: 17,
// ),
// const Text(
// "Or Login using Social Media Account",
// style:
// TextStyle(fontWeight: FontWeight.bold),
// ),
// const SizedBox(
// height: 15,
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceEvenly,
// children: [
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.facebook,
// color: Colors.blue)),
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.google,
// color: Colors.redAccent,
// )),
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.twitter,
// color: Colors.orangeAccent,
// )),
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.linkedinIn,
// color: Colors.green,
// ))
// ],
// )
// ],
// ),
// ),
// ),
// )
// ],
// )
// ],
// ),
// ),
// // Column(
// //   children: [
// //
// //
// //     Stack(
// //       children: [
// //         Container(
// //           child: Image.asset(
// //             'assets/signin.png',
// //             width: 200,
// //             height: 200,
// //           ),
// //         ),
// //         Center(
// //           child: Container(
// //             height: 410,
// //             width: 100,
// //             color: Colors.white,
// //           ),
// //         )
// //       ],
// //     )
// //   ],
// // )
// ],
// ),
// ),
// )
//     : SingleChildScrollView(
// child: Container(
// margin: const EdgeInsets.all(10),
// child: Column(
// children: [
// const Padding(
// padding: EdgeInsets.only(top: 100),
// child: Center(
// child: Text(
// 'Dash',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.white,
// fontSize: 60),
// ),
// ),
// ),
// Container(
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
//
// child: Stack(
//
// children: [
// Positioned(
// top:180,
//
// left: 280,
// child: Image.asset(
// 'assets/signin.png',
// width: 280,
// height: 280,
// ),
// ),
// Center(
// child: Padding(
// padding: const EdgeInsets.only(
// top: 140,
// ),
// child: Container(
// width: 360,
// height: 470,
// decoration: const BoxDecoration(
// color: Colors.white,
// borderRadius:
// BorderRadius.all(Radius.circular(18)),
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// const SizedBox(
// height: 30,
// ),
// const Text(
// "Sign In",
// style: TextStyle(
// fontSize: 28,
// fontWeight: FontWeight.bold),
// ),
// const SizedBox(
// height: 10,
// ),
// const Text(
// "Please Login to Your Account",
// style: TextStyle(
// color: Colors.grey,
// fontSize: 15,
// ),
// ),
// const SizedBox(
// height: 30,
// ),
// const SizedBox(
// width: 320,
// height: 60,
// child: TextField(
// decoration: InputDecoration(
// suffix: Icon(
// FontAwesomeIcons.envelope,
// color: Colors.red,
// ),
// labelText: "Email Address",
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(8)),
// )),
// ),
// ),
// const SizedBox(
// height: 15,
// ),
// const SizedBox(
// width: 320,
// height: 60,
// child: TextField(
// obscureText: true,
// decoration: InputDecoration(
// suffix: Icon(
// FontAwesomeIcons.eyeSlash,
// color: Colors.red,
// ),
// labelText: "Password",
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(
// Radius.circular(8)),
// )),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(right: 20),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextButton(
// onPressed: () {},
// child: const Text(
// "Forget Password",
// style: TextStyle(
// color: Colors.deepOrange),
// ),
// )
// ],
// ),
// ),
// GestureDetector(
// child: Container(
// alignment: Alignment.center,
// width: 320,
// decoration: const BoxDecoration(
// borderRadius: BorderRadius.all(
// Radius.circular(50)),
// gradient: LinearGradient(
// begin: Alignment.centerLeft,
// end: Alignment.centerRight,
// colors: [
// Color(0xFF8A2387),
// Color(0xFFE94057),
// Color(0xFFF27121),
// ])),
// child: const Padding(
// padding: EdgeInsets.all(12.0),
// child: Text(
// 'Login',
// style: TextStyle(
// color: Colors.white,
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ),
// const SizedBox(
// height: 17,
// ),
// const Text(
// "Or Login using Social Media Account",
// style:
// TextStyle(fontWeight: FontWeight.bold),
// ),
// const SizedBox(
// height: 15,
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceEvenly,
// children: [
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.facebook,
// color: Colors.blue)),
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.google,
// color: Colors.redAccent,
// )),
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.twitter,
// color: Colors.orangeAccent,
// )),
// IconButton(
// onPressed: () {},
// icon: const Icon(
// FontAwesomeIcons.linkedinIn,
// color: Colors.green,
// ))
// ],
// )
// ],
// ),
// ),
// ),
// )
// ],
// ),
// ),
// // Column(
// //   children: [
// //
// //
// //     Stack(
// //       children: [
// //         Container(
// //           child: Image.asset(
// //             'assets/signin.png',
// //             width: 200,
// //             height: 200,
// //           ),
// //         ),
// //         Center(
// //           child: Container(
// //             height: 410,
// //             width: 100,
// //             color: Colors.white,
// //           ),
// //         )
// //       ],
// //     )
// //   ],
// // )
// ],
// ),
// ),
// );
// },
// ),