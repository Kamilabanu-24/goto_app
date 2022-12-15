import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackingDetails extends StatelessWidget {
  final String text;
  final String decorationtext;
  const TrackingDetails({
    Key? key,
    required this.text,
    required this.decorationtext, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, top: 10),
              child: Text(
                text,
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(5, 31, 50, 0.7),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 180),
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                decorationtext,
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
    );
  }
}
