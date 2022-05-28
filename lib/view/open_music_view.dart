import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zingo/widget/app_bar.dart';
import 'package:zingo/widget/text_widget.dart';

// ignore: must_be_immutable
class OpenMusicVeiw extends StatefulWidget {
  String imageName;
  OpenMusicVeiw({Key? key, required this.imageName}) : super(key: key);

  @override
  State<OpenMusicVeiw> createState() => _OpenMusicVeiwState();
}

class _OpenMusicVeiwState extends State<OpenMusicVeiw> {
  var value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
          leading: const Icon(Icons.arrow_back),
          actionsWidget: Container(),
          title: const Text("Playing Now",
              style: TextStyle(color: Color(0xFFDBE6FF), fontSize: 20))),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 260.0,
              pageSnapping: true,
              enlargeCenterPage: true,
            ),
            items: [1, 2, 3, 4].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/$i.png"),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textWidget(
                      text: "Believer",
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    textWidget(
                      text: "dummy Text",
                      textStyle: const TextStyle(
                          color: Color(0xFFA5C0FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20,
                child: Icon(
                  Icons.favorite_border_outlined,
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.music_note_sharp,
                  color: Color(0xFF8996B8),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.next_plan_rounded,
                      color: Color(0xFF8996B8),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.change_circle_outlined,
                      color: Color(0xFF8996B8),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textWidget(
                  text: "00:00",
                  textStyle: TextStyle(
                      color: const Color(0xFFA5C0FF).withOpacity(0.7),
                      fontSize: 13,
                      fontWeight: FontWeight.w300),
                ),
                textWidget(
                  text: "04:00",
                  textStyle: TextStyle(
                      color: const Color(0xFFA5C0FF).withOpacity(0.7),
                      fontSize: 13,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Slider(
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            min: 0.0,
            max: 4.0,
            value: value,
            onChanged: (val) {
              value = val;
              setState(() {});
            },
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.skip_previous_outlined,
                  size: 40,
                ),
                Icon(
                  Icons.pause,
                  size: 40,
                ),
                Icon(
                  Icons.skip_next_outlined,
                  size: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
