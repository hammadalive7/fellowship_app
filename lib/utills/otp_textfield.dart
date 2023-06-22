import 'package:flutter/material.dart';

class OtpTextField extends StatefulWidget {
  final int length;
  final Function(String) onCompleted;

  OtpTextField({required this.length, required this.onCompleted});

  @override
  _OtpTextFieldState createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  List<TextEditingController> controllers = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.length; i++) {
      controllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    for (int i = 0; i < widget.length; i++) {
      controllers[i].dispose();
    }
    super.dispose();
  }

  void _onTextChanged(int index, String value) {
    controllers[index].text = value;
    if (value.isNotEmpty && index < widget.length - 1) {
      FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }

    String otpValue = '';
    for (int i = 0; i < widget.length; i++) {
      otpValue += controllers[i].text;
    }
    if (otpValue.length == widget.length) {
      widget.onCompleted(otpValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.length, (index) {
        return Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: TextField(
            controller: controllers[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            onChanged: (value) => _onTextChanged(index, value),
            decoration: InputDecoration(
                fillColor: Colors.red.shade50,
                filled: true,
                hintText: "-",
                hintStyle: TextStyle(color: Colors.red.shade900),
                counterText: '',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide.none)),
          ),
        );
      }),
    );
  }
}
