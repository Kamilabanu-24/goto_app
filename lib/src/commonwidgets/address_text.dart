import 'package:flutter/material.dart';

class AddressText extends StatelessWidget {
  final String address;
  final String street;
  final String city;
  const AddressText(
      {Key? key,
      required this.address,
      required this.street,
      required this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 180,
            top: 10,
          ),
          child: Text(
            address,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(5, 31, 50, 0.4)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 180,
            top: 10,
          ),
          child: Text(
            street,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(5, 31, 50, 0.4)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 180,
            top: 10,
          ),
          child: Text(
            city,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(5, 31, 50, 0.4)),
          ),
        )
      ],
    );
  }
}
