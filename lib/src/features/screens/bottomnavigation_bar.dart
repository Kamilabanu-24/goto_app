import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parentapp_design/src/commonwidgets/identity_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _WidgetOptions = <Widget>[];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home,
              color: Color.fromRGBO(5, 31, 50, 1),
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.radar_2,
              size: 32,
              color: Colors.grey.withOpacity(0.80),
            ),
            label: 'Track',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.profile_delete,
              size: 32,
              color: Colors.grey.withOpacity(0.80),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey.withOpacity(0.8),
        onTap: _onItemTapped,
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 2),
          padding: EdgeInsets.only(left: 5),
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/women.png'),
          ),
        ),
        title: Text(
          'Welcome',
          style: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: Color.fromRGBO(5, 31, 50, 1)),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 30, top: 30, bottom: 10),
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.more_vert,
              color: Color.fromRGBO(5, 31, 50, 1),
            ),
          ),
        ],
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'My children',
              style: GoogleFonts.outfit(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(5, 31, 50, 1)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            children: [
              Row(
                children: [
                  IdentityCard(
                    LabelName: 'Name:',
                    ValueName: 'Akeem Ahmed',
                    backgroundcolor: Color.fromRGBO(255, 207, 47, 1),
                    LabelClass: 'Class:',
                    ValueClass: 'Grade 5-B',
                    LabelIdno: 'Id no:',
                    LabelSchool: 'School:',
                    ValueSchool: 'Nord Anglia International School',
                    ValueIdno: 'SNC1245',
                    nameimage: 'assets/images/child_1.png',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IdentityCard(
                    LabelName: 'Name:',
                    ValueName: 'Abdul Navas',
                    backgroundcolor: Color.fromRGBO(185, 76, 76, 1),
                    LabelClass: 'Class:',
                    ValueClass: 'Grade 2-A',
                    LabelIdno: 'Id no:',
                    LabelSchool: 'School:',
                    ValueSchool: 'Ambassador School',
                    ValueIdno: 'SNC4524',
                    nameimage: 'assets/images/child_2.png',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IdentityCard(
                    LabelName: 'Name:',
                    ValueName: 'Aliya',
                    backgroundcolor: Color.fromRGBO(112, 178, 89, 1),
                    LabelClass: 'Class:',
                    ValueClass: 'Grade 3-B',
                    LabelIdno: 'Id no:',
                    LabelSchool: 'School:',
                    ValueSchool: 'GEMS Royal Dubai School',
                    ValueIdno: 'SNC7845',
                    nameimage: 'assets/images/child_3.png',
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                width: 343,
                child: MaterialButton(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text(
                    '+ Add Child',
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(5, 31, 50, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
