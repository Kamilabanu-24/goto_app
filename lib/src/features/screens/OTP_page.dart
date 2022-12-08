import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parentapp_design/src/common%20widgets/otp_value.dart';
import 'package:parentapp_design/src/common%20widgets/parent_button.dart';
import 'package:parentapp_design/src/features/screens/welcome_page.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 59),
            padding: EdgeInsets.only(left: 24, right: 344),
            child: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(0, 0, 0, 1),
              size: 50,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 266),
            child: Text(
              'Enter OTP',
              style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 167),
            child: RichText(
              text: TextSpan(
                text: 'An OTP has been sent to ',
                style: GoogleFonts.outfit(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(0, 0, 0, 0.6)),
                children: const <TextSpan>[
                  TextSpan(
                      text: ' 05xxxxx18',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(5, 31, 50, 1))),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OTPValue(),
              OTPValue(),
              OTPValue(),
              OTPValue(),
              OTPValue(),
              OTPValue(),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didn t receive OTP ?',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(0, 0, 0, 0.6)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Resend',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 74, 185, 1),
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(0, 74, 185, 1))),
              ),
            ],
          ),
          SizedBox(
            height: 52,
          ),
          ParentButton(
            text: 'Login',
            click: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomePage()));
            },
          ),
        ],
      ),
    );
  }
}
