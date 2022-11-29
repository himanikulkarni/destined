import 'package:destined/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:destined/stories.dart';
import 'package:destined/navbar.dart';

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
        preferredSize: Size.fromHeight(50.h),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            'Add Your Story',
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: Color(hexColor('#33196B')),
            ),
          ),
          actions: [
            Row(
              children: [
                Image.asset(
                  'assets/srch.jpeg',
                  height: 40.h,
                  width: 40.w,
                ),
                Image.asset(
                  'assets/bell icon.jpeg',
                  height: 40.h,
                  width: 40.w,
                ),
                Image.asset(
                  'assets/vector.jpeg',
                  height: 35.h,
                  width: 35.w,
                ),
                SizedBox(
                  width: 5.w,
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
            const Stories(),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Posts(),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

int hexColor(String c) {
  String sColor = '0xff$c';
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
