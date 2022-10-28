import 'package:flutter/material.dart';

class CircularList extends StatelessWidget {
  const CircularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(

          scrollDirection: Axis.horizontal,
          itemBuilder: (context, position) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 77,
                    width: 77,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0),
                      ],
                    ),
                    child: const ClipOval(
                      child: Image(
                        height: 16.0,
                        width: 60.0,
                        image: AssetImage(
                          "assets/img_9.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 5,),
                Expanded(
                  flex: 0,

                  child: Text('Pizza',style: TextStyle(

                ),),)

              ],
            );
          },
          separatorBuilder: (context, position) {
            return const SizedBox(width: 10);
          },
          itemCount: 6),
    );
  }
}
