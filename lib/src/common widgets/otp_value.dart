import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPValue extends StatefulWidget {
  const OTPValue({Key? key}) : super(key: key);

  @override
  State<OTPValue> createState() => _OTPValueState();
}

class _OTPValueState extends State<OTPValue> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 8, right: 8),
        height: 65,
        width: 65,
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          onSaved: (pin) {},
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1),
          ],
          decoration: InputDecoration(
            fillColor: Color.fromRGBO(255, 255, 255, 1),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Color.fromRGBO(5, 31, 50, 0.8))),
          ),
        ),
      ),
    );
  }
}
