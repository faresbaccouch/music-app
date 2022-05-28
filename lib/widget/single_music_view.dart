import 'package:flutter/material.dart';
import 'package:zingo/widget/text_widget.dart';

// ignore: must_be_immutable
class SingleMusicView extends StatelessWidget {
  String imageString;
  SingleMusicView({Key? key, required this.imageString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 190,
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/$imageString.png"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          textWidget(
            text: "monsters Go Bump",
            textStyle: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          textWidget(
            text: "dummy Text",
            textStyle: const TextStyle(
                color: Color(0xFFA5C0FF),
                fontSize: 10,
                fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
