import 'package:destined/home_swipe.dart';
import 'package:destined/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:destined/user_details.dart';
import 'package:destined/messages.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: user(),
        );
      },
    );
  }
}

class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  width: 20.w,
                ),
                SvgPicture.asset('assets/bell icon.svg'),
                SizedBox(
                  width: 20.w,
                ),
                SvgPicture.asset('assets/Vector.svg'),
                SizedBox(
                  width: 20.w,
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Posts(),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(context),
    );
  }
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
            width: 10.w,
          ),
          GestureDetector(
            onTap: () {},
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
                MaterialPageRoute(builder: (context) => const swipe_card()),
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MessageScreen()),
              );
            },
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserDetailsScreen()),
              );
            },
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

int hexColor(String c) {
  String sColor = '0xff$c';
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
