import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  get pageIndex => null;

  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;
    final pages = [
      const Page1(),
      const page2(),
      const page3(),
    ];
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex == 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Iconsax.home,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    size: 32,
                    semanticLabel: 'Home',
                  )
                : const Icon(
                    Iconsax.home,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    size: 32,
                    semanticLabel: 'Home',
                  ),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex == 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Iconsax.sms_tracking,
                      color: Color.fromRGBO(5, 31, 50, 1),
                      size: 32,
                      semanticLabel: 'Home',
                    )
                  : const Icon(
                      Iconsax.sms_tracking,
                      color: Color.fromRGBO(5, 31, 50, 1),
                      size: 32,
                      semanticLabel: 'Home',
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex == 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Iconsax.profile_circle,
                      color: Color.fromRGBO(5, 31, 50, 1),
                      size: 32,
                      semanticLabel: 'Home',
                    )
                  : const Icon(
                      Iconsax.profile_circle,
                      color: Color.fromRGBO(5, 31, 50, 1),
                      size: 32,
                      semanticLabel: 'Home',
                    )),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
