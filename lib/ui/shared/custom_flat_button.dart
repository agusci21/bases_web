import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.pink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: Colors.pink),
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(text),
        ));
  }
}
