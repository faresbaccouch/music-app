import 'package:flutter/material.dart';
import 'package:zingo/widget/text_widget.dart';

infoListWidget({required IconData iconData, required String text}) {
  var changeColorText = const Color(0xFFDFE8FF);
  var changeColorIcon = const Color(0xFF8996B8).withOpacity(0.6);
  TextStyle textStyle = TextStyle(
    color: changeColorText,
    fontSize: 20,
  );
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Row(
      children: [
        Icon(
          iconData,
          size: 30,
          color: changeColorIcon,
        ),
        const SizedBox(width: 30),
        textWidget(text: text, textStyle: textStyle)
      ],
    ),
  );
}
