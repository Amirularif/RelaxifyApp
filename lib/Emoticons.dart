import 'package:flutter/material.dart';

class  Emoticons extends StatelessWidget {
  final String emoticon;


  const Emoticons({
    Key? key,
    required this.emoticon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: Color(0xFF69817A),
          ),
      ),
      padding: EdgeInsets.all(12),
      child: Image.asset(
        emoticon,
        height: 30,
        width: 30,
      ),
    );
  }
}
