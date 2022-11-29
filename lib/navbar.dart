import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
            Scaffold(
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TabBar(
                  tabs: [
                    Tab(),
                    Tab(),
                    Tab(),
                    Tab(),
                  ],
                  indicator: const ShapeDecoration(
                    shape: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 4.0,
                      style: BorderStyle.solid,
                    )),
                    gradient: LinearGradient(colors: [
                      Colors.pink,
                      Colors.purple,
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  ),
                  unselectedLabelColor: Colors.deepPurple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
