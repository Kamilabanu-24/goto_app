import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IdentityCard extends StatelessWidget {
  final String labelname;
  final String labelclass;
  final String labelIdno;
  final String labelSchool;
  final String valuename;
  final String valueclass;
  final String valueIdno;
  final String valuseschool;
  const IdentityCard({
    Key? key,
    required this.labelname,
    required this.labelclass,
    required this.labelIdno,
    required this.labelSchool,
    required this.valuename,
    required this.valueclass,
    required this.valueIdno, required this.valuseschool, required String labelschool,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 0),
              child: Text(
                labelname,
                style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.withOpacity(0.8),
                    fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                valuename,
                style: GoogleFonts.outfit(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(5, 31, 50, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 0),
              child: Text(
                labelclass,
                style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.withOpacity(0.8),
                    fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                valueclass,
                style: GoogleFonts.outfit(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(5, 31, 50, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 0),
              child: Text(
                labelIdno,
                style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.withOpacity(0.8),
                    fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                valueIdno,
                style: GoogleFonts.outfit(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(5, 31, 50, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 0),
              child: Text(
                labelSchool,
                style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.withOpacity(0.8),
                    fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                valuseschool,
                style: GoogleFonts.outfit(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(5, 31, 50, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
