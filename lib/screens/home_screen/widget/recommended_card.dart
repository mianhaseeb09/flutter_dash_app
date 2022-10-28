import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // margin: EdgeInsets.all(5.0),
          height: 250,
          // width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 180,
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),


                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(),
                            child: Image.asset(
                              "assets/img_13.png",
                              height: 185,
                              width: 272,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 240,
                            child: Container(
                              height: 26,
                              width: 26,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.favorite_outline_rounded,
                                  size: 13,
                                  color: Color.fromRGBO(254, 118, 95, 1),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 13,
                            child: Container(
                              height: 20,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color.fromRGBO(255, 168, 50, 1)),
                              child: const Center(
                                child: Text(
                                  "Currently Closed",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        'Mcdonalds',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Chinese - American",
                            style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold
                                color: Colors.black38),
                            maxLines: 1,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            child: const Center(
                              child: Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("5.0"),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '35 min',
                            style: TextStyle(
                                color: Color.fromRGBO(102, 105, 105, 1)),
                          )
                        ],
                      ),
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.redAccent,
                        ),
                        child: const Center(
                            child: Text(
                          "7:00 PM",
                          style: TextStyle(
                              color: Colors.white, ),
                        )),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, position) {
              return const SizedBox(
                width: 5,
              );
            },
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
