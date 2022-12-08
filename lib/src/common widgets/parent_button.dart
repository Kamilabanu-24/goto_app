import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/screens/OTP_page.dart';

class ParentButton extends StatelessWidget {
  final String text;
  final VoidCallback click;
  const ParentButton({Key? key, required this.text, required this.click})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 16, right: 16),
      child: MaterialButton(
        color: Color.fromRGBO(5, 31, 50, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Color.fromRGBO(5, 31, 50, 1))),
        onPressed: click,
        child: Text(
          text,
          style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }
}
