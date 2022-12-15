import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceCard extends StatelessWidget {
  final String labelName;
  final String labelValue;
  final String labelclass;
  final String valueclass;
  final String labelIdno;
  final String valueIdno;

  const AttendanceCard({
    Key? key,
    required this.labelName,
    required this.labelValue,
    required this.labelclass,
    required this.valueclass,
    required this.labelIdno,
    required this.valueIdno,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 16,
                top: 20,
              ),
              child: Text(
                labelName,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(5, 31, 50, 0.7)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 16),
              child: Text(
                labelValue,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 16,
                top: 20,
              ),
              child: Text(
                labelclass,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(5, 31, 50, 0.7)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 16),
              child: Text(
                valueclass,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 16,
                top: 20,
              ),
              child: Text(
                labelIdno,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(5, 31, 50, 0.7)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 16),
              child: Text(
                valueIdno,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
