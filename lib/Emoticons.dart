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
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12)
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
