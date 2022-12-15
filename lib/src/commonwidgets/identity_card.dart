import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../features/screens/tracking_page.dart';

class IdentityCard extends StatelessWidget {
  final String LabelName;
  final String ValueName;
  final String LabelClass;
  final String ValueClass;
  final String LabelIdno;
  final String ValueIdno;
  final String LabelSchool;
  final String ValueSchool;
  final Color backgroundcolor;
  final String nameimage;
  const IdentityCard({
    Key? key,
    required this.LabelName,
    required this.ValueName,
    required this.backgroundcolor,
    required this.LabelClass,
    required this.ValueClass,
    required this.LabelIdno,
    required this.ValueIdno,
    required this.LabelSchool,
    required this.ValueSchool,
    required this.nameimage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TrackingPage()));
      },
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 12),
        height: 230,
        width: 380,
        decoration: BoxDecoration(
          color: backgroundcolor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 7),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15.0,
                  )
                ]),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 6),
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            LabelName,
                            style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.withOpacity(0.8)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            ValueName,
                            style: GoogleFonts.outfit(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(5, 31, 50, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 6),
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            LabelClass,
                            style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.withOpacity(0.8)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            ValueClass,
                            style: GoogleFonts.outfit(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(5, 31, 50, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 6),
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            LabelIdno,
                            style: GoogleFonts.outfit(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.withOpacity(0.8),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            ValueIdno,
                            style: GoogleFonts.outfit(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(5, 31, 50, 1)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 6),
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            LabelSchool,
                            style: GoogleFonts.outfit(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.withOpacity(0.8),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            ValueSchool,
                            style: GoogleFonts.outfit(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(5, 31, 50, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 1,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                      top: 10,
                      right: 10,
                      left: 1,
                      bottom: 180,
                    ),
                    child: Image.asset(
                      nameimage,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
