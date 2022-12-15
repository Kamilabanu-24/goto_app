import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parentapp_design/src/commonwidgets/address_text.dart';
import 'package:parentapp_design/src/commonwidgets/bus_id.dart';
import 'package:parentapp_design/src/commonwidgets/card.dart';
import 'package:parentapp_design/src/commonwidgets/tracking_details.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  int _SelectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[];
  void _onItemTapped(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        toolbarHeight: 100,
        leading: Icon(
          Icons.arrow_back,
          size: 32,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        title: Text(
          'Back to home',
          style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(5, 31, 50, 1),
              fontStyle: FontStyle.normal),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 30, right: 16, left: 30, bottom: 20),
            height: 60,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20.0,
                  offset: Offset(0, 8),
                )
              ],
            ),
            child: Icon(
              Iconsax.arrow_swap_horizontal,
              size: 32,
              color: Color.fromRGBO(41, 45, 50, 1),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 10),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 207, 47, 1),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        AttendanceCard(
                          labelName: 'Name:',
                          labelValue: 'Akeem Ahamed',
                          labelclass: 'Class:',
                          valueclass: 'Grade 5-B',
                          labelIdno: 'Id no:',
                          valueIdno: 'SNC1245',
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 100, right: 16),
                        child: Image.asset(
                          'assets/images/child_1.png',
                          height: 80,
                          width: 70,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 70),
                  height: 130,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(5, 31, 50, 0.1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'Live Attendance',
                            style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(5, 31, 50, 1)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: 180,
                          ),
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Text(
                            'View',
                            style: GoogleFonts.outfit(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(5, 31, 50, 1),
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, top: 15),
            child: Text('Tracking Details',
                style: GoogleFonts.outfit(
                    fontSize: 18,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 15),
            height: 500,
            width: 400,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.home,
                        color: Color.fromRGBO(255, 207, 47, 1),
                        size: 32,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      margin: EdgeInsets.only(top: 30),
                      child: RichText(
                        text: TextSpan(
                          text: 'Your Child is at',
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(5, 31, 50, 0.7),
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: '  Home',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(5, 31, 50, 1)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    thickness: 1,
                    color: Color.fromRGBO(5, 31, 50, 0.1),
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  width: 350,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/tracking.png'),
                        fit: BoxFit.cover),
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start Tracking',
                        style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 32,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )
                    ],
                  ),
                ),
                TrackingDetails(
                  text: 'Pick up Location:',
                  decorationtext: 'Change',
                ),
                AddressText(
                    address: 'Mr Ahmed AI Wasi,Manager AAW',
                    street: 'General Trading PO',
                    city: 'BOX 12345 Dubai UAE'),
                BusId(
                    title: 'Vehicle No',
                    subtitle: 'DNC-5425',
                    titletext: 'Bus Id:',
                    subtitletext: '3'),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 17, top: 10),
                      child: Text(
                        'Route:',
                        style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(5, 31, 50, 7)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 230, top: 10),
                      child: Text(
                        'View Route',
                        style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(255, 207, 47, 1),
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromRGBO(255, 207, 47, 1)),
                      ),
                    ),
                  ],
                ),
               
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.profile_2user,
                size: 32,
                color: Color.fromRGBO(5, 31, 50, 1),
              ),
              label: 'My Children'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.message,
                  size: 32, color: Colors.grey.withOpacity(0.8)),
              label: 'Chats'),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.arrow_right,
                size: 32, color: Colors.grey.withOpacity(0.8)),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.notification,
                size: 32, color: Colors.grey.withOpacity(0.8)),
            label: 'Notifications',
          ),
        ],
        currentIndex: _SelectedIndex,
        selectedItemColor: Color.fromRGBO(5, 31, 50, 1),
        onTap: _onItemTapped,
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    );
  }
}
