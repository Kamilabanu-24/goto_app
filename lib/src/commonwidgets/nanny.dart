import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nanny extends StatelessWidget {
  final String name;
  final String position;
  const Nanny({Key? key, required this.name, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Image.asset('assets/images/aaliya.png', height: 30, width: 30),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(name,style: GoogleFonts.outfit(fontSize:14,fontWeight:FontWeight.w500,fontStyle:FontStyle.normal,color: Color.fromRGBO(5,31,50,1),),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(position,style: GoogleFonts.outfit(fontSize:12,fontWeight:FontWeight.w500,color: Color.fromRGBO(5,31,50,0.6)),),
            ),
          ],
        )
      ],
    );
  }
}
