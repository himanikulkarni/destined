import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:destined/users.dart';

class swipe_card extends StatefulWidget {
  const swipe_card({super.key});

  @override
  State<swipe_card> createState() => _swipe_cardState();
}

class _swipe_cardState extends State<swipe_card> {
  List<List<Color>> gradientColors = [
    [
      const Color.fromARGB(255, 7, 98, 172),
      const Color.fromARGB(255, 11, 57, 94)
    ],
    [
      const Color.fromARGB(255, 192, 19, 77),
      const Color.fromARGB(255, 92, 11, 38)
    ],
    [
      const Color.fromARGB(255, 21, 179, 26),
      const Color.fromARGB(255, 23, 82, 25)
    ],
    [
      const Color.fromARGB(255, 148, 33, 168),
      const Color.fromARGB(255, 73, 18, 82)
    ],
    [
      const Color.fromARGB(255, 173, 47, 38),
      const Color.fromARGB(255, 118, 32, 26)
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.h),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            actions: [
              Row(
                children: [
                  SvgPicture.asset('assets/Srch.svg'),
                  SizedBox(
                    width: 25.w,
                  ),
                  SvgPicture.asset('assets/bell icon.svg'),
                  SizedBox(
                    width: 25.w,
                  ),
                  SvgPicture.asset('assets/Vector.svg'),
                  SizedBox(
                    width: 25.w,
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 130.h,
            ),
            Container(
              child: SwipeDeck(
                startIndex: 0,
                emptyIndicator: Container(
                  child: const Center(
                    child: Text('Nothing Here'),
                  ),
                ),
                cardSpreadInDegrees: 4,
                onSwipeLeft: () {},
                onSwipeRight: () {},
                onChange: (index) {},
                widgets: gradientColors.map((e) => swipe_card(e)).toList(),
              ),
            ),
            SizedBox(
              height: 85.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.thumb_up_alt_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: const BoxDecoration(
                        color: Colors.orange, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.thumb_down_alt_sharp,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 30.w,
                ),
                Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: const BoxDecoration(
                        color: Colors.pink, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 30.w,
                ),
                Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.info,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
        bottomNavigationBar: NavBar(context),
      );
    }));
  }

  Widget swipe_card(List<Color> colors) => Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 48.h,
                      width: 48.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Ruby Diaz',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '1.5 km away',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ));
}

Widget NavBar(BuildContext context) {
  return Container(
      width: double.infinity,
      height: 60.h,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(children: [
          SizedBox(
            width: 18.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const swipe_card()),
              );
            },
            child: Image.asset(
              'assets/swipe-c.jpeg',
              fit: BoxFit.cover,
              height: 45.h,
              width: 45.w,
            ),
          ),
          SizedBox(
            width: 35.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Users()),
              );
            },
            child: Image.asset(
              'assets/circle-c.jpeg',
              fit: BoxFit.cover,
              height: 45.h,
              width: 45.w,
            ),
          ),
          SizedBox(width: 30.w),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/chat-c.jpeg',
              fit: BoxFit.cover,
              height: 45.h,
              width: 45.w,
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/user-c.jpeg',
              fit: BoxFit.cover,
              height: 45.h,
              width: 45.w,
            ),
          ),
        ]),
      ));
}
