import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: EdgeInsets.all(5.0),
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 130,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      "assets/img_8.png",
                      width: 95,
                      height: 114,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Cafe Vita',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          '1 x white bean hummus,1 x Apple\nBrie',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Today at 06:10 pm - 4 People",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 187, 54, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 61,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white),
                          child: const Center(
                              child: Text(
                            "Check in",
                            style: TextStyle(
                                color: Color.fromRGBO(57, 81, 177, 1)),
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, position) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
