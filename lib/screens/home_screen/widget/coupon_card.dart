import 'package:flutter/material.dart';

class CoupanCard extends StatelessWidget {
  const CoupanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 163,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(children: <Widget>[
              //SizedBox(
              //height:MediaQuery.of(context).size.width*0.9,
              //),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, top: 8),
                child: SizedBox(
                  // height: 230,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        height: 163,
                        width: 284,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      )),
                      Positioned(
                          top: 18,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 130.0),
                                child: Text(
                                  "50% OFF & ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  maxLines: 2,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 110.0),
                                child: Text(
                                  "get free delivery",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  maxLines: 2,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 11, right: 120),
                                child: Text(
                                  "Use Coupon:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      //fontWeight: FontWeight.bold
                                      color: Color.fromRGBO(239, 201, 195, 1)),
                                  maxLines: 2,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 120, top: 2),
                                child: Text(
                                  "WELCOME05",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 170),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: const Center(
                                      child: Icon(
                                    Icons.arrow_forward_outlined,
                                    size: 15,
                                  )),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 50,
                          left: 171,
                          child: SizedBox(
                            height: 110,
                            width: 120,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    "assets/img_15.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: 4),
    );
  }
}
