import 'package:flutter/material.dart';
import 'package:flutter_dash_app/screens/home_screen/widget/card.dart';
import 'package:flutter_dash_app/screens/home_screen/widget/circular_list.dart';
import 'package:flutter_dash_app/screens/home_screen/widget/coupon_card.dart';
import 'package:flutter_dash_app/screens/home_screen/widget/must_try_card.dart';
import 'package:flutter_dash_app/screens/home_screen/widget/recommended_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context)=> DefaultTabController(
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello Alexa 👏",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      "Eat right! Be tight!",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
            titleSpacing: 17,
            toolbarHeight: 120,
            backgroundColor: Colors.orange,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Color.fromRGBO(255, 220, 214, 1),
              tabs: <Widget>[
                Text(
                  "Dining",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Pickup",
                  style: TextStyle(fontSize: 16),
                ),
                // Text(""),
                // Text(""),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 15),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)),
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,

                          //     Border.all(color: Colors.black)
                        ),
                      ),
                    ),
                    Positioned(
                        left: 14,
                        child: Container(
                          alignment: Alignment.topRight,
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Center(
                              child: Text(
                                "1",
                                style:
                                TextStyle(color: Colors.orange, fontSize: 12),
                              )),
                        ))
                  ],
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6.0, 14, 8, 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search for restaurant, item or more",
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                          suffixIcon: const Icon(Icons.search),
                          fillColor: Colors.grey,
                          hoverColor: Colors.orange,
                          focusColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                          )),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.more_horiz, size: 10),
                                Text(
                                  "Sort ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.expand_more,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            height: 25,
                            width: 117,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.green),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.person_add_outlined,
                                  size: 14,
                                  color: Colors.green,
                                ),
                                Text(
                                  " 2 - 7:00 PM tonight",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black12),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(Icons.location_on_outlined, size: 14),
                                  Text(
                                    "Nearby",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                            height: 25,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.star_border, size: 14),
                                Text(
                                  " Over 4.5  |",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.expand_more,
                                  size: 14,
                                  color: Colors.black,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "My Upcoming Order",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CardScreen(),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "1/3",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Mood for… ',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const CircularList(),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recommended for you',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Color.fromRGBO(254, 118, 95, 1),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const RecommendedCard(),
                  const SizedBox(
                    height: 26,
                  ),
                  const CoupanCard(),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "1/3",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Must try visit',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Color.fromRGBO(254, 118, 95, 1),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const MustTryCard(),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            hoverColor: Colors.black,
            splashColor: Colors.amberAccent,
            child: Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Center(
                child: Icon(Icons.add),
              ),
            ),
            onPressed: () => {},
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            // shape: const CircularNotchedRectangle(),
            // notchMargin: 20,
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () => {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.home_outlined,
                            color: Colors.orange,
                            size: 40,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.orange),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 80,
                      onPressed: () => {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.search_outlined,
                            color: Colors.grey,
                            size: 40,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      minWidth: 80,
                      onPressed: () => {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.book_outlined,
                            color: Colors.grey,
                            size: 40,
                          ),
                          Text(
                            "Booking",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 80,
                      onPressed: () => {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                            size: 40,
                          ),
                          Text(
                            "Account",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))));
  // getBody() {
  //   var size = MediaQuery.of(context).size;
  //   return SingleChildScrollView(
  //     child: Container(
  //       width: MediaQuery.of(context).size.width,
  //       height: 129,
  //       decoration: const BoxDecoration(color: Colors.redAccent),
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 const Text(
  //                   'Hello Alexa 👋',
  //                   style: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 26,
  //                       fontWeight: FontWeight.bold),
  //                 ),
  //                 Container(
  //                   width: 45,
  //                   height: 52,
  //                   decoration: BoxDecoration(
  //                       shape: BoxShape.circle,
  //                       border: Border.all(color: Colors.white)),
  //                   child: Stack(
  //                     children: [
  //                       const Center(
  //                         child: Icon(
  //                           Icons.notifications_none_outlined,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                       Positioned(
  //                         left: 24,
  //                         bottom: 34,
  //                         child: Container(
  //                           alignment: Alignment.topRight,
  //                           width: 16,
  //                           height: 16,
  //                           decoration: const BoxDecoration(
  //                               shape: BoxShape.circle, color: Colors.white),
  //                           child: const Center(
  //                             child: Text(
  //                               '1',
  //                               style: TextStyle(
  //                                   fontSize: 12,
  //                                   color: Color.fromRGBO(254, 118, 95, 1)),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 15, right: 15),
  //             child: Row(
  //               children: const [
  //                 Text(
  //                   'Eat right! Be tight',
  //                   style: TextStyle(
  //                       fontSize: 14, color: Color.fromRGBO(255, 230, 226, 1)),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 25),
  //             child: Row(
  //               children: const [
  //                 DefaultTabController(
  //                   initialIndex: 0,
  //                   length: 1,
  //                   child: TabBar(
  //                     isScrollable: true,
  //                     indicatorColor: Colors.white,
  //                     indicatorSize: TabBarIndicatorSize.tab,
  //                     tabs: [
  //                       Tab(
  //                         child: Text(
  //                           'Dining',
  //                           style: TextStyle(fontWeight: FontWeight.bold),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 10,
  //           ),
  //           TextField(
  //             decoration: InputDecoration(
  //               icon: new Icon(Icons.search),
  //               labelText: "Describe Your Issue...",
  //               enabledBorder: const OutlineInputBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(20.0)),
  //                 borderSide: const BorderSide(
  //                   color: Colors.grey,
  //                 ),
  //               ),
  //               focusedBorder: OutlineInputBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
  //                 borderSide: BorderSide(color: Colors.blue),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
