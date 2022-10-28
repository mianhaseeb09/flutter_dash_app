import 'package:flutter/material.dart';

class MustTryCard extends StatelessWidget {
  const MustTryCard({Key? key}) : super(key: key);

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
                  height: 158,
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(),
                            child: Image.asset(
                              "assets/img_13.png",
                              height: 158,
                              width: 200,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 170,

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

                        ],
                      ),
                      const SizedBox(height: 12,),
                      const Text(
                        'Cafe Vita',
                        style: TextStyle(
                            fontSize: 16.7, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const Text(
                            "Indian",
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
                      const SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.orange,
                            ),
                            child: const Center(
                                child: Text(
                                  "6:45 PM",
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                )),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.orange,
                            ),
                            child: const Center(
                                child: Text(
                                  "7:00 PM",
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                )),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.orange,
                            ),
                            child: const Center(
                                child: Text(
                                  "7:45 PM",
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
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
