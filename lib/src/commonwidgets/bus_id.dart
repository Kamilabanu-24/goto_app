import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusId extends StatelessWidget {
  final String title;
  final String subtitle;
  final String titletext;
  final String subtitletext;
  const BusId(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.titletext,
      required this.subtitletext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 200,
                top: 10,
              ),
              child: Text(
                title,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(5, 31, 50, 0.7)),
              ),
            ),
            Container(
              child: Text(
                subtitle,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    fontStyle: FontStyle.normal),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 4,
                right: 280,
                top: 10,
              ),
              child: Text(
                titletext,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(5, 31, 50, 0.7)),
              ),
            ),
            Container(
              child: Text(
                subtitletext,
                style: GoogleFonts.outfit(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(5, 31, 50, 1),
                    fontStyle: FontStyle.normal),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
