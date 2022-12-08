import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parentapp_design/src/common%20widgets/parent_button.dart';
import 'OTP_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController mobilecontroller = TextEditingController();
  @override
  String dropdownvalue = '+91';
  List<String> items = [
    '+91',
    '+1',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16, right: 141),
            margin: const EdgeInsets.only(top: 118),
            child: Text(
              'Welcome to\nLocus',
              style: GoogleFonts.outfit(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(left: 16, right: 263),
            child: Text(
              'Mobile Number',
              style: GoogleFonts.outfit(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(5, 31, 50, 0.6)),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 60,
            width: double.infinity,
            child: TextField(
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  color: Colors.black),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(5, 31, 50, 0.8))),
                  prefixIcon: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "+91",
                          style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ),
                      PopupMenuButton<String>(
                        icon: const Icon(
                          Icons.expand_more,
                          color: Color.fromRGBO(5, 31, 50, 1),
                          size: 30,
                        ),
                        onSelected: (String value) {
                          mobilecontroller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return items
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0),
                        child: Text(
                          '|',
                          style: GoogleFonts.outfit(
                              fontSize: 50, fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ParentButton(
            text: 'Get OTP',
            click: () {
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => OTPPage()));
            },
          ),
        ],
      ),
    );
  }
}
