import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(170),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 129,
          decoration: const BoxDecoration(color: Colors.redAccent),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hello Alexa 👋',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 45,
                      height: 52,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)),
                      child: Stack(
                        children: [
                          const Center(
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            left: 24,
                            bottom: 34,
                            child: Container(
                              alignment: Alignment.topRight,
                              width: 16,
                              height: 16,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(254, 118, 95, 1)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Text(
                      'Eat right! Be tight',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(255, 230, 226, 1)),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      
    );
  }
}
