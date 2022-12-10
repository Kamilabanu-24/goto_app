import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../../common widgets/card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key, key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: SizedBox(
              width: 80,
              child: Container(
                margin: EdgeInsets.only(left: 0.8),
                padding: EdgeInsets.only(left: 0.5),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/women.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 0.5),
              child: Text(
                'Welcome',
                style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(5, 31, 50, 1)),
              ),
            ),
            trailing: Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Icon(
                Icons.more_vert,
                size: 20,
                color: Color.fromRGBO(5, 31, 50, 1),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 35),
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
          Container(
            height: 260,
            width: 450,
            color: Color.fromRGBO(255, 207, 47, 1),
            child: Container(
              margin: EdgeInsets.only(bottom: 0.8),
              child: Padding(
                padding: EdgeInsets.only(right: 3, bottom: 1, left: 3),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 2,
                  child: SizedBox(
                    height: 250,
                    width: 450,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              IdentityCard(
                                labelname: 'Name:',
                                labelclass: 'Class:',
                                labelIdno: 'Id no:',
                                labelSchool: 'School:',
                                valuename: 'Akeem Ahamed',
                                valueclass: 'Grade 5-B',
                                valueIdno: 'SNC1245',
                                labelschool: 'School:',
                                valuseschool:
                                    'Nord Anglia International School',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    bottom: 80,
                                    top: 30,
                                  ),
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/child_1.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 260,
            width: 450,
            color: Color.fromRGBO(185, 76, 76, 1),
            child: Container(
              margin: EdgeInsets.only(bottom: 1),
              child: Padding(
                padding: EdgeInsets.only(left: 3, right: 3, bottom: 1),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 2,
                  child: SizedBox(
                    height: 250,
                    width: 450,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              IdentityCard(
                                labelname: 'Name:',
                                labelclass: 'Class:',
                                labelIdno: 'Id no:',
                                labelSchool: 'School:',
                                valuename: 'Akeem Ahamed',
                                valueclass: 'Grade 5-B',
                                valueIdno: 'SNC1245',
                                labelschool: 'School:',
                                valuseschool:
                                    'Nord Anglia International School',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    bottom: 80,
                                    top: 30,
                                  ),
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/child_1.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
        selectedItemColor: Color.fromRGBO(5, 31, 50, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
