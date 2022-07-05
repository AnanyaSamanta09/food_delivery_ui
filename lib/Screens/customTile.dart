import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Icon icon;
  final String text;
  const CustomTile({Key? key,
  required this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 10,
        ),
        Text(text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
