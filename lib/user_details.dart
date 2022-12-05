import 'dart:developer';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  List<Color> gradientColors = [Colors.pink, Colors.purple];

  bool showMenu = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
              InkWell(
                onTap: () {
                  setState(() {
                    showMenu = true;
                    log("here");
                  });
                },
                child: Icon(
                  Icons.more_vert,
                  size: 25.w,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white),
          ),
        ),
        showMenu
            ? SafeArea(
                child: Scaffold(
                  backgroundColor: Colors.white.withOpacity(0.50),
                  body: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 500.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: gradientColors,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              35.r,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 15.w),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          showMenu = false;
                                          log("NOoooooo");
                                        });
                                      },
                                      child: Icon(
                                        Icons.cancel,
                                        color: Colors.white,
                                        size: 25.w,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.videocam,
                                    color: Colors.white,
                                    size: 23.w,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Start Video Calling",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 23.w,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Invite on a date",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/archive icon.svg'),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Archive Conversation",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                    size: 23.w,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Delete Chat",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.cancel,
                                    color: Colors.white,
                                    size: 23.w,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Clear History",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 23.w,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Search Chat",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/media icon.svg'),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "View Media",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.block,
                                    color: Colors.white,
                                    size: 23.w,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Block",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              const Divider(
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.bug_report,
                                    color: Colors.white,
                                    size: 23.w,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Report",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
